.class public Lcom/google/android/gms/auth/otp/OtpActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/otp/h;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/otp/OtpActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->j:Landroid/view/View;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public final a([Landroid/accounts/Account;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/auth/otp/OtpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 83
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/otp/b;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/gms/auth/otp/b;-><init>(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/content/Context;[Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/gms/auth/otp/c;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/auth/otp/c;-><init>(Lcom/google/android/gms/auth/otp/OtpActivity;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->f:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->a(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->setTitle(I)V

    .line 42
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->a:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->f:Landroid/widget/Spinner;

    .line 46
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->b:Landroid/view/View;

    .line 47
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->c:Landroid/view/View;

    .line 48
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->e:Landroid/view/View;

    .line 49
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->d:Landroid/view/View;

    .line 50
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->g:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->h:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/otp/OtpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->i:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/otp/OtpActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/gms/auth/otp/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/otp/a;-><init>(Lcom/google/android/gms/auth/otp/OtpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Lcom/google/android/gms/auth/otp/d;

    new-instance v1, Lcom/google/android/gms/auth/firstparty/dataservice/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/firstparty/dataservice/u;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, p0, v1}, Lcom/google/android/gms/auth/otp/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/otp/h;Lcom/google/android/gms/auth/firstparty/dataservice/s;)V

    iget-object v1, v0, Lcom/google/android/gms/auth/otp/d;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    invoke-interface {v0}, Lcom/google/android/gms/auth/otp/h;->c()V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/otp/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/auth/otp/d;->b:Lcom/google/android/gms/auth/otp/h;

    new-instance v3, Lcom/google/android/gms/auth/otp/e;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/auth/otp/e;-><init>(Lcom/google/android/gms/auth/otp/d;[Landroid/accounts/Account;)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/auth/otp/h;->a([Landroid/accounts/Account;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method
