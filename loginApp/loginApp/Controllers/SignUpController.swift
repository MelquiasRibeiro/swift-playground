import UIKit

class SignUpController: UIViewController {
    
    //MARK: - Properties
    
    private lazy var image:UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    private lazy var emailTextField: UITextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "username/e-mail"
        emailTextField.textColor = UIColor.rgba(red: 130, green: 130, blue: 251,alpha: 0.1)
        emailTextField.font = UIFont.systemFont(ofSize:16)
        emailTextField.attributedPlaceholder = NSAttributedString(string: "username/e-mail",attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return emailTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        
        return passwordTextField
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .white
    }
    
    //MARK: - Selectors
    
    
    
    //MARK: - Helpers
    func configureUi(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        view.addSubview(image)
            image.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
               
               
        let stackView  = UIStackView(arrangedSubviews: [emailTextField,passwordTextField])
        stackView.axis = .vertical
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.anchor(top: image.bottomAnchor,left: view.leftAnchor,
                                right: view.rightAnchor,paddingLeft: 16,paddingRight: 16)
    }


}
