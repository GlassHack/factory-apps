.class public final Lcom/google/android/youtube/core/async/GDataRequest;
.super Lcom/google/android/youtube/core/async/z;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/youtube/core/async/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/youtube/core/async/v;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/v;-><init>()V

    .line 52
    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest;->a:Lcom/google/android/youtube/core/async/g;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/z;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[BLcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    const-string v0, "content can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method static synthetic c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 84
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "dev.gdata.youtube.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "stage.gdata.youtube.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 89
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 4

    .prologue
    .line 180
    const-string v0, "newUri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->e:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method
