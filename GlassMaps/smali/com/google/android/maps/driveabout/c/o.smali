.class public final Lcom/google/android/maps/driveabout/c/o;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 713
    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/o;->a:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 718
    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/o;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/o;->a:Ljava/lang/String;

    .line 719
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/o;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->j(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v2, "<target uri=\'"

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

    .line 728
    return-void
.end method
