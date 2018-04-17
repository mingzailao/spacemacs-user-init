;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
 
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ruby
     jekyll
     python
     graphviz
     html
     markdown
     yaml
     scheme
     ;;(javascript :variables tern-command '("node" "/usr/local/lib/node_modules/tern/bin/tern"))
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     lua
     bibtex
     latex
     cdlatex
     auto-completion
     ;; better-defaults
     emacs-lisp
     ;;(c-c++ :variables
     ;;       c-c++-default-mode-for-headers 'c++-mode)
     (shell :variables shell-default-shell 'shell)
     ;; git
     ;; markdown
     org
     elpy
     gtags
     ycmd
     c-c++
     ;;(python :variables python-test-runner '(pytest,nose))
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;;spell-checking
     syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(blog-admin ox-hugo)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(leuven)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; 字体字号设置
   dotspacemacs-default-font '("Source Code Pro"
                               :size 28
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in `dotspacemacs/user-config' first."
  ;;add Tinghua Mirro
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;;添加bibtex 方便应用
  (setq org-ref-default-bibliography '("~/BibTex/")
        org-ref-pdf-directory "~/PDF/"
        org-ref-bibliography-notes "~/BibTex/notes.org")
  ;;添加xelatex中文支持
  (setq org-latex-pdf-process
        '("xelatex -interaction nonstopmode -output-directory %o %f"
          "bibtex %b"
          "xelatex -interaction nonstopmode -output-directory %o %f"
          "xelatex -interaction nonstopmode -output-directory %o %f"))
  ;;
  (use-package blog-admin
    :init
    (progn
      ;; your config
      (setq blog-admin-backend-type 'hexo)
      (setq blog-admin-backend-path "~/github/blog")
      (setq blog-admin-backend-new-post-in-drafts t)
      (setq blog-admin-backend-new-post-with-same-name-dir t) 
      )
    )
  ;; ;;
   )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;;
  (use-package ox-hugo
    :ensure t                           ;Auto-install the package from Melpa
    :after ox)


  ;; 在org-mode默认打开cdlatex
  (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
  ;; 在org-mode中默认换行
  (add-hook 'org-mode-hook (lambda ()
                             (setq truncate-lines nil)))
  ;; 在python-mode中默认换行
  (add-hook 'org-mode-hook (lambda ()
                             (setq truncate-lines nil)))
  ;; 显示行号
  ;;(add-hook 'find-file-hooks (lambda () (linum-mode 1)))
  ;; 在python-mode中设置company后端为company-anaconda
  ;; (add-hook 'python-mode-hook
  ;;           (lambda ()
  ;;             (set (make-local-variable 'company-backends) '(company-anaconda))))
  ;;set ycmd
  ;; (setq ycmd-server-command '("python" "/Users/apple/.vim/bundle/YouCompleteMe/third_party/ycmd/ycmd/")
  ;;       ycmd-global-config "/Users/apple/.spacemacs.d/.global_config.py"
  ;;       )

  (set-variable 'ycmd-server-command '("python" "/Users/apple/PAPERS/github/ycmd/ycmd/"))
  (set-variable 'ycmd-global-config "/Users/apple/.emacs.d/layers/+tools/ycmd/global_conf.py")
  (add-hook 'c-mode-hook 'ycmd-mode)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cdlatex-command-alist
   (quote
    (("axm" "Insert axiom env" "" cdlatex-environment
      ("axiom")
      t nil)
     ("thr" "Insert theorem env" "" cdlatex-environment
      ("theorem")
      t nil)
     ("eq*" "Insert equation *" "" cdlatex-environment
      ("equation*")
      t nil)
     ("defi" "Insert Definition" "" cdlatex-environment
      ("definition")
      t nil)
     ("eqn*" "Insert equation *" "" cdlatex-environment
      ("eqnarray*")
      t nil)
     ("pp" "Insert \\propto" "\\propto{}?" cdlatex-position-cursor nil nil t))))
 '(cdlatex-math-modify-alist (quote ((66 "\\mathbb" nil t nil nil))))
 '(cdlatex-math-symbol-alist
   (quote
    ((80
      ("\\Pi" "\\prod"))
     (83
      ("\\Sigma" "\\sum" "\\arcsin")))))
 '(company-ycmd-enable-fuzzy-matching nil)
 '(company-ycmd-request-sync-timeout 0.1)
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(elpy-company-post-completion-function (quote ignore))
 '(elpy-django-always-prompt t)
 '(elpy-mode-hook (quote (subword-mode hl-line-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-sane-defaults)))
 '(elpy-rpc-backend "rope")
 '(evil-want-Y-yank-to-eol nil)
 '(google-translate-default-source-language "en" t)
 '(google-translate-default-target-language "zh-CN" t)
 '(google-translate-enable-ido-completion t t)
 '(google-translate-show-phonetic t t)
 '(org-babel-load-languages
   (quote
    ((python . t)
     (shell . t)
     (emacs-lisp . t)
     (latex . t)
     (ditaa . t)
     (dot \.t)
     (scheme . t)
     (dot . t))))
 '(org-ditaa-jar-path "/Users/apple/.emacs.d/elpa/contrib/scripts/ditaa0_9.jar")
 '(org-download--dir-1 "/Users/apple/PAPERS/blog/source/img")
 '(org-download-heading-lvl nil)
 '(org-download-image-dir "/Users/apple/PAPERS/blog/source/img")
 '(org-download-method (quote directory))
 '(org-download-screenshot-method "screencapture -i %s")
 '(org-startup-folded (quote showeverything))
 '(org-startup-with-beamer-mode t)
 '(org-startup-with-inline-images t)
 '(org-toggle-latex-fragment (quote globally))
 '(package-selected-packages
   (quote
    (ox-hugo rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby hyde auctex-latexmk yapfify yaml-mode xterm-color ws-butler window-numbering which-key web-mode volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spacemacs-theme spaceline slim-mode shell-pop scss-mode sass-mode restart-emacs rainbow-delimiters quelpa pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pcre2el paradox org-ref org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file neotree multi-term move-text mmm-mode markdown-toc macrostep lua-mode lorem-ipsum live-py-mode linum-relative link-hint less-css-mode info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag graphviz-dot-mode google-translate golden-ratio gnuplot gh-md ggtags geiser flycheck-ycmd flycheck-pos-tip flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elpy elisp-slime-nav dumb-jump disaster define-word cython-mode company-ycmd company-web company-statistics company-c-headers company-auctex company-anaconda column-enforce-mode cmake-mode clean-aindent-mode clang-format cdlatex bracketed-paste blog-admin auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(scheme-mode-hook
   (quote
    (spacemacs//init-jump-handlers-scheme-mode spacemacs//init-company-scheme-mode company-mode)) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (org-display-inline-images)
  (setq filename
	(concat
	 (make-temp-name
	  (concat (file-name-nondirectory (file-name-sans-extension buffer-file-name))
		  "/"
		  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (unless (file-exists-p (file-name-directory filename))
    (make-directory (file-name-directory filename)))
					; take screenshot
  (if (eq system-type 'darwin)
      (progn
	(call-process-shell-command "screencapture" nil nil nil nil " -s " (concat
									    "\"" filename "\"" ))
	(call-process-shell-command "convert" nil nil nil nil (concat "\"" filename "\" -resize  \"50%\"" ) (concat "\"" filename "\"" ))
	))
  (if (eq system-type 'gnu/linux)
      (call-process "import" nil nil nil filename))
					; insert into file if correctly taken
  (if (file-exists-p filename)
      (insert (concat "#+attr_html: :width 800\n" "[[file:" filename "]]")))
  ;; (org-display-inline-images)
  )


(defun generate-ycmd-files()
  (interactive)
  (call-process "python" "/Users/apple/PAPERS/github/YCM-Generator/config_gen.py" (file-name-directory buffer-file-name)))




;; (require 'cl)
;; (require 'dash)

;; (setq blog-dir "~/github/blog"
;;       public-blog-dir "~/github/blog-public"
;;       hugo-process "Hugo Server"
;;       hugo-server-site "http://localhost:1313/")

;; (defmacro with-dir (DIR &rest FORMS)
;;   "Execute FORMS in DIR."
;;   (let ((orig-dir (gensym)))
;;     `(progn (setq ,orig-dir default-directory)
;;             (cd ,DIR) ,@FORMS (cd ,orig-dir))))

;; (defun deploy-blog ()
;;   "Run hugo and push changes upstream."
;;   (interactive)
;;   (with-dir public-blog-dir
;;             (shell-command "git rm -rf .")
;;             (shell-command "git clean -fxd")

;;             (with-dir blog-dir (->> public-blog-dir
;;                                     (concat "hugo -d ")
;;                                     shell-command))

;;             (shell-command "git add .")
;;             (--> (current-time-string)
;;                  (concat "git commit -m \"" it "\"")
;;                  (shell-command it))
;;             (magit-push-current-to-upstream nil)))

;; (defun start-blog-server ()
;;   "Run hugo server if not already running and open its webpage."
;;   (interactive)
;;   (with-dir blog-dir
;;             (unless (get-process hugo-process)
;;               (start-process hugo-process nil "hugo" "server"))
;;             (browse-url hugo-server-site)))

;; (defun end-blog-server ()
;;   "End hugo server process if running."
;;   (interactive)
;;   (--when-let (get-process hugo-process)
;;     (delete-process it)))

;; (spacemacs/set-leader-keys (kbd "ab") 'deploy-blog)
;; (spacemacs/set-leader-keys (kbd "aa") 'start-blog-server)
;; (spacemacs/set-leader-keys (kbd "ae") 'end-blog-server)
