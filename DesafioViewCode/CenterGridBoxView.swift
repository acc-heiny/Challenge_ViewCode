import UIKit
import SnapKit

class CenterGridBoxView: UIView {

    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.masksToBounds = true
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

extension CenterGridBoxView : ViewConfiguration {

    func buildViewHierarchy() {
        addSubview(imageView)
    }

    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(50)

        }
    }

    func setupConfiguration() {
        backgroundColor = .black
        layer.cornerRadius = 10

    }
}
