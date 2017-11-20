.class public Lcom/google/android/gms/auth/login/BrowserActivity;
.super Lcom/google/android/gms/auth/login/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/setupwizard/navigationbar/a;


# static fields
.field public static D:Ljava/lang/String;

.field public static E:Lcom/google/android/gms/auth/login/BrowserActivity;

.field private static G:Ljava/lang/Object;


# instance fields
.field F:Lcom/google/android/gms/auth/login/CustomWebView;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/util/Map;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Landroid/webkit/CookieManager;

.field private volatile V:Z

.field private W:Landroid/content/IntentFilter;

.field private X:Lcom/google/android/gms/auth/login/ap;

.field private Y:Z

.field private Z:Z

.field private aa:Lcom/google/android/gms/auth/login/as;

.field private ab:Z

.field private ac:Ljava/util/ArrayList;

.field private ad:Lcom/google/android/gms/auth/login/ac;

.field private ae:Z

.field private af:Lcom/google/android/gms/auth/login/h;

.field private ag:Z

.field private ah:Lcom/google/android/gms/auth/login/at;

.field private ai:Landroid/content/ServiceConnection;

.field private aj:Landroid/widget/Button;

.field private ak:Ljava/lang/String;

.field private al:Lcom/google/android/setupwizard/util/b;

.field private am:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "https://accounts.google.com/o/android/auth?"

    sput-object v0, Lcom/google/android/gms/auth/login/BrowserActivity;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/i;-><init>()V

    .line 160
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Q:Z

    .line 163
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->R:Z

    .line 166
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->S:Z

    .line 173
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->V:Z

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->W:Landroid/content/IntentFilter;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Y:Z

    .line 180
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Z:Z

    .line 182
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ab:Z

    .line 183
    iput-object v3, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    .line 185
    iput-object v3, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ad:Lcom/google/android/gms/auth/login/ac;

    .line 186
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ae:Z

    .line 191
    new-instance v0, Lcom/google/android/gms/auth/login/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/s;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ah:Lcom/google/android/gms/auth/login/at;

    .line 198
    new-instance v0, Lcom/google/android/gms/auth/login/t;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/t;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ai:Landroid/content/ServiceConnection;

    .line 988
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/ArrayList;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v1, "account_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "creating_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string v1, "is_minute_maid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const-string v1, "allowed_domains"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/BrowserActivity;Lcom/google/android/gms/auth/login/ac;)Lcom/google/android/gms/auth/login/ac;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ad:Lcom/google/android/gms/auth/login/ac;

    return-object p1
.end method

.method public static a(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 854
    const/4 v1, 0x0

    .line 855
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_1

    .line 857
    const-string v2, "\\;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 858
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 859
    if-ltz v6, :cond_0

    .line 860
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 861
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string v6, "oauth_token"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 869
    :goto_1
    return-object v0

    .line 857
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 215
    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->H:Ljava/lang/String;

    .line 216
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->I:Ljava/lang/String;

    .line 217
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->J:Ljava/lang/String;

    .line 218
    const-string v0, "creating_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->K:Z

    .line 219
    const-string v0, "is_minute_maid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    .line 220
    const-string v0, "allowed_domains"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/BrowserActivity;Z)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/BrowserActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/login/BrowserActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ae:Z

    return v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/auth/login/h;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 673
    if-nez p0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 682
    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/auth/login/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/EmbeddedSetup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/ac;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ad:Lcom/google/android/gms/auth/login/ac;

    return-object v0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/google/android/gms/auth/login/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/login/u;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ae:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/setupwizard/util/b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 691
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 697
    :goto_0
    return-object p0

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ag:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/gms/auth/login/BrowserActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->V:Z

    return p1
.end method

.method static synthetic e(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/h;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->af:Lcom/google/android/gms/auth/login/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/auth/login/BrowserActivity;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->V:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/auth/login/BrowserActivity;)Lcom/google/android/gms/auth/login/as;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/auth/login/BrowserActivity;)Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->T:Z

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    const v1, 0x7f1000de

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->am:Landroid/view/View;

    .line 401
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->T:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->stopLoading()V

    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->T:Z

    .line 786
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->m()V

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(I)V

    .line 967
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 968
    return-void
.end method

.method public final a(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->B:Z

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->a(ZZ)V

    .line 960
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->b()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 961
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/firstparty/shared/k;)V
    .locals 4

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->H:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->K:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/auth/login/ShowErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/k;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 803
    const/16 v1, 0x3f1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 804
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 973
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 817
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->U:Landroid/webkit/CookieManager;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_0

    .line 820
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Q:Z

    .line 826
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Q:Z

    if-eqz v1, :cond_3

    .line 831
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->R:Z

    if-nez v1, :cond_3

    .line 832
    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->R:Z

    .line 833
    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->J:Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/CustomWebView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->destroy()V

    .line 837
    new-instance v0, Lcom/google/android/gms/auth/login/aa;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/aa;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->J:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v3, "authorization_code"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v1, :cond_2

    .line 840
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/login/as;->a:Z

    iget-object v2, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v3, "is_terms_of_services_newly_accepted"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 842
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 843
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v3, "allowed_domains"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    iget-boolean v1, v1, Lcom/google/android/gms/auth/login/as;->b:Z

    iget-object v2, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    const-string v3, "is_new_account"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    :cond_2
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/auth/login/aa;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 848
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 851
    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 932
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    if-eqz v1, :cond_2

    .line 937
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ag:Z

    if-nez v1, :cond_0

    .line 953
    :goto_0
    return v0

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/CustomWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/CustomWebView;->goBack()V

    goto :goto_0

    .line 946
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_2

    .line 947
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->destroy()V

    .line 948
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(I)V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 953
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 808
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/login/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(I)V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 813
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aj:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    const-string v1, "errorCode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 239
    :cond_0
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown click action for view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->am:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/util/b;->removeView(Landroid/view/View;)V

    .line 394
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->l()V

    .line 396
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 247
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->M:Ljava/lang/String;

    .line 251
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->N:Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    .line 259
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 260
    const-string v1, "Accept-Language"

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->P:Ljava/util/Map;

    .line 266
    :goto_0
    sget-object v0, Lcom/google/android/gms/auth/b/a;->G:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/login/h;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/login/h;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->af:Lcom/google/android/gms/auth/login/h;

    .line 267
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setContentView(I)V

    .line 269
    if-eqz p1, :cond_e

    .line 270
    const-string v0, "interactivity_completed"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Q:Z

    .line 271
    const-string v0, "waiting_for_network"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->S:Z

    .line 272
    const-string v0, "background_task_started"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->R:Z

    .line 273
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Landroid/os/Bundle;)V

    .line 279
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Lcom/google/android/setupwizard/util/b;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    .line 281
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->al:Lcom/google/android/setupwizard/util/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->l()V

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ak:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 286
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ak:Ljava/lang/String;

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    :cond_2
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0d0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/CustomWebView;

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/auth/login/CustomWebView;->clearCache(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->A:Z

    if-nez v0, :cond_f

    move v0, v6

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/login/CustomWebView;->a(Z)V

    const v0, 0x7f0d0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0d002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MinuteMaid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/auth/login/v;

    invoke-direct {v4, p0}, Lcom/google/android/gms/auth/login/v;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, ""

    :goto_3
    new-instance v0, Lcom/google/android/gms/auth/login/as;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-object v5, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/login/as;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;Landroid/os/Handler;Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ah:Lcom/google/android/gms/auth/login/at;

    iput-object v1, v0, Lcom/google/android/gms/auth/login/as;->c:Lcom/google/android/gms/auth/login/at;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/google/android/gms/auth/login/as;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.managed_profiles"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ab:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    const-string v2, "mm"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->V:Z

    new-instance v0, Lcom/google/android/gms/auth/login/ap;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/login/ap;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->X:Lcom/google/android/gms/auth/login/ap;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->A:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/b/a;->D:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/auth/login/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/login/y;-><init>(Landroid/app/Activity;)V

    :cond_3
    sget-object v0, Lcom/google/android/gms/auth/b/a;->E:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_4
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->U:Landroid/webkit/CookieManager;

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    new-instance v1, Lcom/google/android/gms/auth/login/x;

    invoke-direct {v1, p0, v7}, Lcom/google/android/gms/auth/login/x;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    new-instance v1, Lcom/google/android/gms/auth/login/w;

    invoke-direct {v1, p0, v7}, Lcom/google/android/gms/auth/login/w;-><init>(Lcom/google/android/gms/auth/login/BrowserActivity;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/auth/login/CustomWebView;->setMapTrackballToArrowKeys(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/auth/login/CustomWebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/auth/login/CustomWebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget-object v0, Lcom/google/android/gms/auth/login/BrowserActivity;->G:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    sget-object v1, Lcom/google/android/gms/auth/login/BrowserActivity;->G:Ljava/lang/Object;

    const-string v2, "gls"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/login/CustomWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    sput-object p0, Lcom/google/android/gms/auth/login/BrowserActivity;->E:Lcom/google/android/gms/auth/login/BrowserActivity;

    .line 291
    iget-object v3, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->I:Ljava/lang/String;

    const-string v0, "device_country"

    invoke-static {p0, v0, v8}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "&lang="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&langCountry="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->N:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&hl="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    iget v5, v4, Landroid/content/res/Configuration;->mcc:I

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&mcc="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v4, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&xoauth_display_name=Android%20Phone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&cc="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_4
    if-nez v1, :cond_11

    sget-object v0, Lcom/google/android/gms/auth/login/BrowserActivity;->D:Ljava/lang/String;

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&tmpl=reauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&domains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/as;->hasTelephony()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/as;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->aa:Lcom/google/android/gms/auth/login/as;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/login/as;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->A:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&is_setup_wizard=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->B:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&use_immersive_mode=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iput-boolean v6, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->T:Z

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->U:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->af:Lcom/google/android/gms/auth/login/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/login/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->i()V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->destroy()V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    .line 292
    :goto_7
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-nez v0, :cond_c

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->H:Ljava/lang/String;

    if-eqz v0, :cond_14

    const v0, 0x7f1001c6

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setTitle(I)V

    .line 295
    :cond_c
    invoke-direct {p0, v6}, Lcom/google/android/gms/auth/login/BrowserActivity;->b(Z)V

    .line 296
    return-void

    .line 263
    :cond_d
    iput-object v8, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->P:Ljava/util/Map;

    goto/16 :goto_0

    .line 276
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_f
    move v0, v7

    .line 290
    goto/16 :goto_2

    :cond_10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_11
    move-object v0, v1

    .line 291
    goto/16 :goto_5

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&tmpl=new_account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v2, "GLSActivity"

    const-string v3, "loadUrl from startWebLogin."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->P:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/auth/login/CustomWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 293
    :cond_14
    const v0, 0x7f1001c7

    goto :goto_8

    :cond_15
    move-object v2, v0

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-nez v1, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 306
    const v1, 0x7f100099

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 308
    const v2, 0x7f020070

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 309
    invoke-static {v1}, Lcom/google/android/gms/auth/a/b;->a(Landroid/view/MenuItem;)V

    .line 312
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 920
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onDestroy()V

    .line 921
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->F:Lcom/google/android/gms/auth/login/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/CustomWebView;->destroy()V

    .line 924
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 319
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->finish()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 895
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onPause()V

    .line 896
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->X:Lcom/google/android/gms/auth/login/ap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 899
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/BrowserActivity;->m()V

    .line 900
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 884
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onResume()V

    .line 885
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->X:Lcom/google/android/gms/auth/login/ap;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->W:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 888
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/login/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "creating_account"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->K:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    const-string v0, "is_minute_maid"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const-string v0, "allowed_domains"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 379
    const-string v0, "url"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "interactivity_completed"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    const-string v0, "waiting_for_network"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->S:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-string v0, "background_task_started"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 874
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onStart()V

    .line 875
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->L:Z

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "Binding MinuteMaidDgService..."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/login/MinuteMaidDgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    iget-object v1, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ai:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/auth/login/BrowserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 880
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 907
    invoke-super {p0}, Lcom/google/android/gms/auth/login/i;->onStop()V

    .line 908
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ae:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->z:Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;

    const-string v1, "GLSActivity"

    const-string v2, "Unbinding MinuteMaidDgService..."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/shared/LatencyTracker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ai:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/BrowserActivity;->ae:Z

    .line 913
    :cond_0
    return-void
.end method
