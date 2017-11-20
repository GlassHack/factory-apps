.class public final Lcom/google/android/maps/driveabout/g/k;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/k;->a:Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/google/android/maps/driveabout/g/k;->b:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<message tag=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 248
    const-string v0, "</message>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    return-void
.end method
