.class final Lcom/google/android/maps/driveabout/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ap;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/d/c;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/d/c;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/google/android/maps/driveabout/d/d;->a:Lcom/google/android/maps/driveabout/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/p;ILcom/google/android/maps/driveabout/model/o;)V
    .locals 4

    .prologue
    .line 747
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 748
    const-string v0, "IndoorState"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Building id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    if-nez p2, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/d;->a:Lcom/google/android/maps/driveabout/d/c;

    invoke-static {v0, p3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/d/c;Lcom/google/android/maps/driveabout/model/o;)V

    goto :goto_0
.end method
