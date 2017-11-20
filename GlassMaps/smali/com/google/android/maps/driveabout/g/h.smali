.class public final Lcom/google/android/maps/driveabout/g/h;
.super Lcom/google/android/maps/driveabout/g/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/g/j;-><init>()V

    .line 292
    iput p1, p0, Lcom/google/android/maps/driveabout/g/h;->a:I

    .line 293
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/g/h;->b:Z

    .line 294
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 298
    iget v0, p0, Lcom/google/android/maps/driveabout/g/h;->a:I

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/g/h;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x57

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<datarequest type=\'onNetworkError\' errorCode=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' networkEverWorked=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 301
    return-void
.end method
