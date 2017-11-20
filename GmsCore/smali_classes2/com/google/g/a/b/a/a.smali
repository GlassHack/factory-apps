.class public final Lcom/google/g/a/b/a/a;
.super Lcom/google/g/a/b/b;
.source "SourceFile"


# static fields
.field private static e:I

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/g/a/b/a/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/g/a/b/b;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/g/a/b/a/a;->c:Landroid/content/Context;

    .line 51
    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, Lcom/google/g/a/b/a/a;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/g/a/b/a/a;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/g/a/b/a/a;->d:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/g/a/b/a/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()I
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/google/g/a/b/a/a;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/g/a/b/a/a;->e:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/google/g/a/b/a/a;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/g/a/b/a/a;->e:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/google/g/a/b/a/a;->e:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/g/a/b/f;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/g/a/b/a/a;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/d/c/a;

    iget-object v1, p0, Lcom/google/g/a/b/a/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/g/a/b/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/g/a/b/a/a;->d:Lorg/apache/http/client/HttpClient;

    .line 70
    iget-object v0, p0, Lcom/google/g/a/b/a/a;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 73
    :cond_0
    new-instance v0, Lcom/google/g/a/b/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/g/a/b/a/b;-><init>(Lcom/google/g/a/b/a/a;Ljava/lang/String;ZB)V

    return-object v0
.end method
