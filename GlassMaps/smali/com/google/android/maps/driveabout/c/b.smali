.class public abstract Lcom/google/android/maps/driveabout/c/b;
.super Lcom/google/android/maps/driveabout/g/f;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lcom/google/android/maps/driveabout/location/b;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/g/f;-><init>(Landroid/content/Context;)V

    .line 51
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/maps/driveabout/c/b;->d:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/c/b;->e:J

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/c/b;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/c/b;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/c/b;J)J
    .locals 0

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/c/b;->e:J

    return-wide p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/c/b;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/maps/driveabout/c/b;->d:I

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/io/BufferedWriter;)V
    .locals 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/c/b;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<destination uri=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 781
    :cond_0
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/location/b;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->b:Lcom/google/android/maps/driveabout/location/b;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lcom/google/android/maps/driveabout/c/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/c/c;-><init>(Lcom/google/android/maps/driveabout/c/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->b:Lcom/google/android/maps/driveabout/location/b;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->b:Lcom/google/android/maps/driveabout/location/b;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 789
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
