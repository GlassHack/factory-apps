.class public Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;
.super Lcom/google/android/gms/auth/be/proximity/authorization/d;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/google/c/c/bf;

    invoke-direct {v0}, Lcom/google/c/c/bf;-><init>()V

    const-string v1, "easy_unlock"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    const-string v1, "auto_lock"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/c/bf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/bf;->a()Lcom/google/c/c/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/d;-><init>(B)V

    .line 50
    iput p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->c:I

    .line 51
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->b:Ljava/util/Map;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->a:Ljava/lang/String;

    const-string v1, "Received an unknown event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;

    if-eqz v1, :cond_0

    .line 60
    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->c:I

    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
