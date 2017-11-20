.class public final Lcom/google/android/maps/driveabout/c/n;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 689
    const-string v0, "duration"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/n;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/n;->a:I

    .line 690
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/google/android/maps/driveabout/c/n;->a:I

    return v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 696
    iget v0, p0, Lcom/google/android/maps/driveabout/c/n;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<sleep duration=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 697
    return-void
.end method
