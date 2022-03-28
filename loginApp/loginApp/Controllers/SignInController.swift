import UIKit

class SignInController: UIViewController {
    
    //MARK: - Properties
    
    
    private lazy var image:UIImageView = {
        let image = UIImageView()
        
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.image = UIImage(named: "image")
        
        return image
    }()
    
    private lazy var emailTextField: UITextField = {
        let emailTextField = creatingInput(iputPlaceHolder:"Email/User Name")
        return emailTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let passWordTextField = creatingInput(iputPlaceHolder:"Password")
        passWordTextField.isSecureTextEntry = true
        return passWordTextField
    }()
    
    private lazy var  emailContinerView: UIStackView = {
          let emailContinerView =  creatingIputGroup(iputPlaceHolder: "Email", input: emailTextField)
          return emailContinerView

      }()
    
    private lazy var  passwordContinerView: UIStackView = {
        let passwordContinerView =  creatingIputGroup(iputPlaceHolder: "Password", input: passwordTextField)
        return passwordContinerView
          
      }()
    
    
    private lazy var loginButton:UIButton = {
           let loginButton = UIButton()
           loginButton.setTitle("Log In", for: .normal)
           loginButton.backgroundColor = UIColor.rgba(red: 130, green: 180, blue: 251, alpha: 1)
           loginButton.setTitleColor(UIColor.white, for: .normal)
           loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
           loginButton.layer.cornerRadius = 5
           loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//           loginButton.layer.cornerRadius = 20
           //loginButton.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
           return loginButton
           
       }()
    
   
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        configureUi()
    }
    
    //MARK: - Selectors
    
    
    
    //MARK: - Helpers
    func configureUi(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        view.addSubview(image)
            image.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
               
               
        let stackView  = UIStackView(arrangedSubviews: [emailContinerView,passwordContinerView,loginButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.anchor(top: image.bottomAnchor,left: view.leftAnchor,
                                right: view.rightAnchor,paddingLeft: 16,paddingRight: 16)
    }
    
    
    
    func creatingInput(iputPlaceHolder:String) -> UITextField  {
        let input = TextFieldWithPadding()
    
        input.placeholder = iputPlaceHolder
        input.textColor = UIColor.rgba(red: 130, green: 130, blue: 251,alpha: 1)
        input.backgroundColor =  UIColor.rgba(red: 130, green: 130, blue: 251,alpha: 0.1)
        input.font = UIFont.systemFont(ofSize:16)
        input.heightAnchor.constraint(equalToConstant: 50).isActive = true
        input.layer.cornerRadius = 20
        input.attributedPlaceholder = NSAttributedString(string: iputPlaceHolder ,attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray])
        
        return input
    }
    
    func creatingIputGroup(iputPlaceHolder: String, input: UITextField ) -> UIStackView {
        let inputLabel = UILabel()
        inputLabel.text = iputPlaceHolder
        inputLabel.font = UIFont.boldSystemFont(ofSize: 16)
        inputLabel.textColor = .black
        
        let iputGroup  = UIStackView(arrangedSubviews: [inputLabel,input])
        
        iputGroup.axis = .vertical
        iputGroup.spacing = 8
        
        return iputGroup
    }
    
    

}

