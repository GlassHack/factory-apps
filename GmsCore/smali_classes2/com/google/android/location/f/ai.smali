.class public final Lcom/google/android/location/f/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/location/f/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/f/ai;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    check-cast p1, Lcom/google/android/location/f/ai;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v2, p0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method
