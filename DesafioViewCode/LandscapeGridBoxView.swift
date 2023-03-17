import UIKit
import SnapKit

class LandscapeGridBoxView: UIView {

    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        return view
    }()

    lazy var verticalStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()

    lazy var horizontalStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 20
        return view
    }()

    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()

    lazy var subTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
        return view
    }()

    lazy var titleInformation: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .systemPink
        return view
    }()

    lazy var date: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .systemBlue
        return view
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LandscapeGridBoxView: ViewConfiguration {

    func buildViewHierarchy() {
        
        addSubview(imageView)
        verticalStackView.addArrangedSubview(title)
        verticalStackView.addArrangedSubview(subTitle)
        horizontalStackView.addArrangedSubview(titleInformation)
        horizontalStackView.addArrangedSubview(date)
        verticalStackView.addArrangedSubview(horizontalStackView)
        addSubview(verticalStackView)

    }

    func setupConstraints() {
        
        imageView.snp.makeConstraints { make in
            make.left.bottom.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.28)
            
        }
        
        verticalStackView.snp.makeConstraints { make in
            make.top.bottom.right.equalToSuperview()
            make.left.equalTo(imageView.snp.right).offset(8)
        }
    }
    
    func setupConfiguration() {
        backgroundColor = .blue
        
    }
}
