.class public Lcom/google/android/gms/recovery/AccountRecoveryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Z

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Spinner;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->r:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->s:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "Email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "DisplayText"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "BroadUse"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string v1, "GetDataFromServer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v1, "ShowMessage"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    sget-object v1, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showIntro:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 470
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 471
    :cond_0
    const/4 p0, 0x0

    .line 473
    :cond_1
    return-object p0

    .line 470
    :cond_2
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v0, v0, v3

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 363
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 364
    iget-object v3, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 372
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 373
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->q:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    .line 377
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 379
    return-void

    :cond_1
    move v0, v2

    .line 371
    goto :goto_0

    :cond_2
    move v3, v2

    .line 372
    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->r:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 176
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->setContentView(I)V

    .line 177
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->c:Landroid/widget/Button;

    .line 178
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->g:Landroid/view/View;

    .line 179
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->h:Landroid/view/View;

    .line 180
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b:Landroid/widget/Button;

    .line 181
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    .line 182
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    .line 183
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    .line 184
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->f:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    const v1, 0x7f1003f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    sget-object v0, Lcom/google/android/gms/auth/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/gms/recovery/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/recovery/a;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/gms/recovery/b;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/recovery/b;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    new-array v1, v10, [Landroid/text/InputFilter;

    new-instance v2, Lcom/google/android/gms/recovery/c;

    invoke-direct {v2, p0}, Lcom/google/android/gms/recovery/c;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    const-string v0, "Email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->j:Ljava/lang/String;

    const-string v0, "Action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    const-string v0, "Detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "EMAIL_ONLY"

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l:Ljava/lang/String;

    const-string v0, "CountryList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    const-string v0, "CountryIndex"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "SecondaryEmail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "PhoneNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_1

    if-eqz v3, :cond_7

    :cond_1
    const-string v0, "VERIFY_RECOVERY_INFO"

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v0, "ShowMessage"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->n:Z

    const-string v0, "DisplayText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    iput-boolean v10, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->p:Z

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "BroadUse"

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->p:Z

    :cond_3
    const-string v0, "VERIFY_RECOVERY_INFO"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->c:Landroid/widget/Button;

    const v1, 0x7f1003f4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1003ec

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->j:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "PHONE_ONLY"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    if-eq v2, v12, :cond_c

    const-string v0, "EMAIL_ONLY"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03004d

    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->n:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Z)V

    .line 191
    iput-boolean v10, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a:Z

    .line 192
    return-void

    .line 190
    :cond_7
    const-string v0, "REQUEST_RECOVERY_INFO"

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    const-string v1, "REQUEST_RECOVERY_INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f1003ed

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "https://support.google.com/mobile/?p=accounts_recovery&hl=%s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v7, Landroid/text/Annotation;

    invoke-virtual {v1, v9, v0, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    aget-object v0, v0, v9

    invoke-virtual {v1, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v1, v0}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/common/ux/URLSpanNoUnderline;

    invoke-direct {v0, v6}, Lcom/google/android/gms/auth/common/ux/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f1003ee

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "0000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method static synthetic a(Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;)V
    .locals 3

    .prologue
    .line 56
    const-string v0, "Action"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "Detail"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "SecondaryEmail"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhoneNumber"

    iget-object v1, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CountryList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/Country;

    iget-object v0, v0, Lcom/google/android/gms/auth/Country;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CountryIndex"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 282
    if-eqz p1, :cond_0

    move v2, v1

    .line 283
    :goto_0
    if-eqz p1, :cond_1

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 288
    return-void

    :cond_0
    move v2, v0

    .line 282
    goto :goto_0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->n:Z

    return v0
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 671
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 672
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 673
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/Country;

    iget-object v0, v0, Lcom/google/android/gms/auth/Country;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 672
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 675
    :cond_0
    return-object v2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->s:Ljava/lang/String;

    .line 429
    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a()V

    .line 431
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->q:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 499
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->q:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const v2, 0x7f100125

    invoke-virtual {p0, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b()V

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const v2, 0x7f1003f7

    invoke-virtual {p0, v2}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a()V

    .line 357
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    if-eqz p1, :cond_0

    const-string v0, "initialized"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Lcom/google/android/gms/recovery/d;

    invoke-virtual {p0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/recovery/d;-><init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Landroid/os/Bundle;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/recovery/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 384
    iget-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->q:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const v1, 0x7f100125

    invoke-virtual {p0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-static {v0}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    const v1, 0x7f1003f7

    invoke-virtual {p0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-boolean v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->a:Z

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "initialized"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v0, "Email"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "Action"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "Detail"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "SecondaryEmail"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "PhoneNumber"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "ShowMessage"

    iget-boolean v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v0, "CountryList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->m:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "CountryIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "DisplayText"

    iget-object v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    const-string v0, "BroadUse"

    iget-boolean v1, p0, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "GetDataFromServer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method
