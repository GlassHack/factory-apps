.class public final Lcom/google/android/maps/driveabout/c/d;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 282
    iput p1, p0, Lcom/google/android/maps/driveabout/c/d;->a:I

    .line 283
    iput p2, p0, Lcom/google/android/maps/driveabout/c/d;->b:I

    .line 284
    iput p3, p0, Lcom/google/android/maps/driveabout/c/d;->c:I

    .line 285
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 289
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/d;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/d;->a:I

    .line 290
    const-string v0, "satellites"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/d;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/d;->b:I

    .line 291
    const-string v0, "numUsed"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/d;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/d;->c:I

    .line 292
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/android/maps/driveabout/c/d;->a:I

    return v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 5

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/maps/driveabout/c/d;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/c/d;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/c/d;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "<gpsstatus type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' satellites=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' numUsed=\'"

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

    .line 303
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/google/android/maps/driveabout/c/d;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/maps/driveabout/c/d;->c:I

    return v0
.end method
