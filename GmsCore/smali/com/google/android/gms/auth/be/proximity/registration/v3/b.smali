.class public final Lcom/google/android/gms/auth/be/proximity/registration/v3/b;
.super Lcom/google/android/gms/auth/be/proximity/registration/v3/h;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    sput-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "failure"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/auth/be/proximity/registration/v3/h;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "type"

    const-string v2, "registration_completed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "status"

    sget-object v2, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->a:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->b:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;

    if-eqz v1, :cond_0

    .line 54
    iget v1, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->b:I

    check-cast p1, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;

    iget v2, p1, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/be/proximity/registration/v3/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
