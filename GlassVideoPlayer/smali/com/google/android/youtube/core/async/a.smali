.class public abstract Lcom/google/android/youtube/core/async/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;


# instance fields
.field protected final b:Landroid/accounts/AccountManager;

.field public final c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field protected final d:Ljava/lang/String;

.field private e:Lcom/google/android/youtube/core/async/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "youtube"

    invoke-static {v0}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->createClientLogin(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 35
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    .line 63
    sget-object v0, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected constructor <init>(Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "accountManager cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 52
    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    .line 54
    const-string v0, "authMethod cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 55
    const-string v0, "accountType cannot be empty"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/a;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private a()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/a;->a()[Landroid/accounts/Account;

    move-result-object v2

    .line 84
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 85
    :cond_1
    aget-object v3, v2, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    aget-object v0, v2, v0

    goto :goto_0

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/a;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/a;->b(Landroid/accounts/Account;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->e:Lcom/google/android/youtube/core/async/ap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a;->e:Lcom/google/android/youtube/core/async/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/ap;->a()V

    .line 218
    :cond_0
    return-void
.end method
