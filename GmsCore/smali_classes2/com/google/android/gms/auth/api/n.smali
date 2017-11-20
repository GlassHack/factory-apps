.class final Lcom/google/android/gms/auth/api/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/auth/api/o;

.field final synthetic b:Lcom/google/android/gms/auth/api/k;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/gms/auth/api/n;->b:Lcom/google/android/gms/auth/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/google/android/gms/auth/api/n;->c:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lcom/google/android/gms/auth/api/n;->d:Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?fields=basePath%2CbaseUrl%2CdiscoveryVersion%2Cid%2Cmethods%2Cname%2Cparameters%2Cresources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/n;->e:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/api/n;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/k;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/google/android/gms/auth/api/o;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/n;->b:Lcom/google/android/gms/auth/api/k;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/api/o;-><init>(Lcom/google/android/gms/auth/api/k;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/api/n;->a:Lcom/google/android/gms/auth/api/o;

    .line 232
    return-void
.end method
