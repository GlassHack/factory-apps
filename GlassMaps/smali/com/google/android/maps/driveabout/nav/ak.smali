.class public final Lcom/google/android/maps/driveabout/nav/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/ak;->a:I

    .line 182
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/ak;->b:Ljava/lang/String;

    .line 183
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/ak;
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 190
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 193
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Lcom/google/android/maps/driveabout/nav/ak;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/nav/ak;-><init>(ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ak;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ak;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ak;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ak;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text:\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
