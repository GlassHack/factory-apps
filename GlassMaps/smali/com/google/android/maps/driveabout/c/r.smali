.class public final Lcom/google/android/maps/driveabout/c/r;
.super Lcom/google/android/maps/driveabout/c/q;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/q;-><init>(Lorg/w3c/dom/Node;)V

    .line 520
    const-string v0, "param"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/r;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/r;->b:I

    .line 522
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 532
    iget v0, p0, Lcom/google/android/maps/driveabout/c/r;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "param=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 527
    return-void
.end method
