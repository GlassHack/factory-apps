.class public final Lcom/google/android/maps/driveabout/c/j;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 356
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/j;->a:I

    .line 357
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->h()Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/j;->b:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/android/maps/driveabout/c/j;->c:I

    .line 360
    return-void

    .line 358
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 6

    .prologue
    .line 368
    sget-object v0, Lcom/google/android/maps/driveabout/nav/i;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/maps/driveabout/c/j;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/j;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/c/j;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "<guidance type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' text=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' stepNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    return-void
.end method
