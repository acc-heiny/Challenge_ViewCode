import UIKit
import SnapKit

protocol CustomViewDelegate: AnyObject {
    func openGenericScreen()
}
class CustomView: UIView {
    
   weak var delegate: CustomViewDelegate?
    
    var firstBoxView = LandscapeGridBoxView()
    var middleBoxView = GridBoxView()
    var leftBoxView = GridBoxView()
    var rightBoxView = GridBoxView()
    var centerBoxView = CenterGridBoxView()
    
    lazy var purpleContainer: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .blue
        view.layer.cornerRadius = 10
        return view
    }()

    lazy var firstGridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 10
        return view
    }()

    lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 40
        return view
    }()

    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        button.setTitle("Some Action", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapActionButton), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapActionButton() {
        delegate?.openGenericScreen()
        
    }
}

extension CustomView: ViewConfiguration {

    func buildViewHierarchy() {

        addSubview(purpleContainer)
        purpleContainer.addSubview(firstBoxView)
        purpleContainer.addSubview(gridContainer)
        gridContainer.addArrangedSubview(leftBoxView)
        gridContainer.addArrangedSubview(middleBoxView)
        gridContainer.addArrangedSubview(rightBoxView)
        purpleContainer.addSubview(centerBoxView)
        addSubview(button)
    }

    func setupConstraints() {

        purpleContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.top.equalTo(self.snp.topMargin)
            make.bottom.equalTo(self.snp.bottomMargin).inset(55)
        }

        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(130)
            make.top.equalTo(firstBoxView.snp.bottom).offset(15)

        }

        firstBoxView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(75.0)
            make.topMargin.equalToSuperview().inset(15)

        }

        centerBoxView.snp.makeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.top.equalTo(gridContainer.snp.bottom).offset(50)
            make.centerX.equalToSuperview()

        }

        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35).isActive = true

    }

    func setupConfiguration() {
        backgroundColor = .darkGray
    }
}
