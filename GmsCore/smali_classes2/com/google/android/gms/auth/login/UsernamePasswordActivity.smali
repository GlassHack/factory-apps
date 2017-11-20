.class public Lcom/google/android/gms/auth/login/UsernamePasswordActivity;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/setupwizard/navigationbar/a;


# instance fields
.field protected D:Landroid/widget/EditText;

.field protected E:Landroid/widget/EditText;

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TextView;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:J

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->F:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->G:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/login/az;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/gms/auth/login/az;

    const-string v1, "account_name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/login/az;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->K:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->L:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    .line 399
    :goto_0
    if-eqz v1, :cond_1

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Lcom/google/android/gms/auth/login/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v1, v2

    .line 404
    :cond_1
    return-object v1

    .line 398
    :cond_2
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v0, 0x7f10011c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/auth/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "device_country"

    invoke-static {p0, v4, v2}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "de"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v0, 0x7f100120

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find gmail_host_name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 400
    :cond_6
    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    aget-object v3, v0, v6

    invoke-static {v3}, Lcom/google/android/gms/auth/login/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    aget-object v0, v0, v6

    goto :goto_1

    :cond_7
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    .line 432
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/view/View;Z)V

    .line 434
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->I:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->I:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/view/View;)V

    .line 437
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->B:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 438
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->d()V

    .line 323
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->P:Ljava/lang/String;

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "password"

    iget-object v2, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->finish()V

    .line 332
    return-void
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->g()V

    .line 371
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 372
    iget-object v3, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 379
    iget-boolean v4, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->K:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 381
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    if-nez v4, :cond_0

    move v0, v1

    .line 384
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->L:Z

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 386
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 388
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 392
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 379
    goto :goto_0

    :cond_3
    move v3, v2

    .line 384
    goto :goto_1

    :cond_4
    move v1, v2

    .line 386
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 148
    :cond_0
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    .line 149
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->P:Ljava/lang/String;

    .line 150
    const-string v0, "is_adding_account"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    .line 151
    const-string v0, "is_confirming_credentials"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->R:Z

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->F:Ljava/lang/String;

    .line 157
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->setContentView(Landroid/view/View;)V

    const v1, 0x7f10017e

    const v2, 0x7f03002b

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupwizard/util/b;->b(II)Landroid/view/View;

    :goto_0
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->R:Z

    if-nez v0, :cond_2

    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/google/android/gms/auth/login/ax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/login/ax;-><init>(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/view/View;Z)V

    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->g()V

    .line 160
    return-void

    .line 157
    :cond_5
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->setContentView(I)V

    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->H:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/view/View;Z)V

    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->I:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Lcom/google/android/gms/auth/login/aw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/login/aw;-><init>(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iput-boolean v4, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->M:Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 409
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 411
    const v0, 0x7f100184

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 413
    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 414
    invoke-static {v0}, Lcom/google/android/gms/auth/a/b;->a(Landroid/view/MenuItem;)V

    .line 415
    return v2
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const v2, 0x7f10009c

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    if-eqz v0, :cond_4

    .line 337
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->K:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_3

    .line 349
    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    const v1, 0x7f100128

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 357
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->L:Z

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    const v1, 0x7f100126

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 422
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->setResult(I)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->finish()V

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onPause()V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->N:J

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onResume()V

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->g()V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->N:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 195
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->M:Z

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 202
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->L:Z

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->E:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "password"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "is_adding_account"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    const-string v0, "is_confirming_credentials"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method
