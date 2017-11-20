.class public final Lcom/google/android/maps/driveabout/c/h;
.super Lcom/google/android/maps/driveabout/c/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Lorg/w3c/dom/Node;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<locationenabled provider=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    return-void
.end method
