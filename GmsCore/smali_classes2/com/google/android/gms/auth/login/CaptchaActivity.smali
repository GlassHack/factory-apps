.class public Lcom/google/android/gms/auth/login/CaptchaActivity;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizard/navigationbar/a;


# instance fields
.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/login/CaptchaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bitmap"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "answer"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    .line 143
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    .line 145
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->B:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/CaptchaActivity;->a(Landroid/view/View;Z)V

    .line 149
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "answer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->finish()V

    .line 118
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->g()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->finish()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget-boolean v0, Lcom/google/android/gms/auth/login/CaptchaActivity;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "GLSActivity"

    const-string v1, "Doing captcha..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->H:Landroid/graphics/Bitmap;

    .line 83
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->setContentView(Landroid/view/View;)V

    .line 86
    const v1, 0x7f1001c5

    const v2, 0x7f030028

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupwizard/util/b;->b(II)Landroid/view/View;

    .line 100
    :goto_1
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->G:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->G:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->H:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->D:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->D:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/CaptchaActivity;->a(Landroid/view/View;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->g()V

    .line 108
    return-void

    .line 77
    :cond_1
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->H:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 90
    :cond_2
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->F:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->E:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/CaptchaActivity;->a(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "bitmap"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/CaptchaActivity;->H:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    return-void
.end method
