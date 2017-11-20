.class final Lcom/google/android/maps/driveabout/g/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/g/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/g/b;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/d;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 346
    const-string v0, "ErrorReport"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/d;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/g/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/g/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/d;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/g/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 347
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method
