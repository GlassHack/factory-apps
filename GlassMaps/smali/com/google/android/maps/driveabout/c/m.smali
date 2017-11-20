.class public final Lcom/google/android/maps/driveabout/c/m;
.super Lcom/google/android/maps/driveabout/c/f;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/location/z;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/c/f;-><init>(Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    .line 243
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 7

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Lorg/w3c/dom/Node;)V

    .line 252
    new-instance v0, Lcom/google/android/maps/driveabout/location/z;

    const-string v1, "provider"

    invoke-static {p1, v1}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    .line 253
    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "orientation"

    .line 254
    invoke-static {p1, v4}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "pitch"

    const-string v6, "45"

    .line 255
    invoke-static {p1, v5, v6}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/z;-><init>(Ljava/lang/String;JFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    .line 256
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/location/z;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    return-object v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 7

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    .line 261
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    .line 262
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/location/z;->d()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "<orientation provider=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' time=\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' orientation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' pitch=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 263
    return-void
.end method
