.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;
.super Lcom/google/android/gms/auth/be/proximity/authorization/k;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;

.field private static final b:Landroid/util/SparseArray;

.field private static final c:Landroid/util/SparseArray;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    .line 42
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "absent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "present"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "unsupported"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method private constructor <init>(III)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/be/proximity/authorization/k;-><init>(B)V

    .line 65
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Z)V

    .line 66
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/d/a/x;->a(Z)V

    .line 67
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/d/a/x;->a(Z)V

    .line 68
    iput p1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->e:I

    .line 69
    iput p2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->f:I

    .line 70
    iput p3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->g:I

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v0, v2

    .line 66
    goto :goto_1

    :cond_2
    move v1, v2

    .line 67
    goto :goto_2
.end method

.method synthetic constructor <init>(IIIB)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "status_update"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_presence"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->a:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->e:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secure_screen_lock"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->b:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->f:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trust_agent"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->c:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->g:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;

    if-eqz v1, :cond_0

    .line 106
    check-cast p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;

    .line 107
    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->e:I

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->f:I

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->g:I

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->g:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/i;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
