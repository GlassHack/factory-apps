.class public final Lcom/google/android/maps/driveabout/c/i;
.super Lcom/google/android/maps/driveabout/c/f;
.source "SourceFile"


# instance fields
.field private final b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/c/f;-><init>(JLjava/lang/String;)V

    .line 208
    iput p4, p0, Lcom/google/android/maps/driveabout/c/i;->b:I

    .line 209
    iput-object p5, p0, Lcom/google/android/maps/driveabout/c/i;->c:Landroid/os/Bundle;

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Ljava/lang/String;)V

    .line 197
    iput p2, p0, Lcom/google/android/maps/driveabout/c/i;->b:I

    .line 198
    iput-object p3, p0, Lcom/google/android/maps/driveabout/c/i;->c:Landroid/os/Bundle;

    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Lorg/w3c/dom/Node;)V

    .line 214
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/i;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/i;->b:I

    .line 215
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/maps/driveabout/c/i;->b:I

    return v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/i;->a:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/c/i;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<locationstatuschanged provider=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/i;->c:Landroid/os/Bundle;

    return-object v0
.end method
