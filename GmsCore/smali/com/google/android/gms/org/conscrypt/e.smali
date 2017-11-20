.class final Lcom/google/android/gms/org/conscrypt/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/e;->a:Ljava/lang/String;

    .line 131
    iput p2, p0, Lcom/google/android/gms/org/conscrypt/e;->b:I

    .line 132
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    instance-of v1, p1, Lcom/google/android/gms/org/conscrypt/e;

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    check-cast p1, Lcom/google/android/gms/org/conscrypt/e;

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/org/conscrypt/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/e;->b:I

    iget v2, p1, Lcom/google/android/gms/org/conscrypt/e;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/e;->b:I

    add-int/2addr v0, v1

    return v0
.end method
