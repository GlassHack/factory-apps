.class public final Lcom/google/android/maps/driveabout/a/q;
.super Lcom/google/android/maps/driveabout/a/m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/m;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    .line 89
    iput p1, p0, Lcom/google/android/maps/driveabout/a/q;->a:I

    .line 90
    iput p2, p0, Lcom/google/android/maps/driveabout/a/q;->b:I

    .line 91
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/maps/driveabout/a/q;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/maps/driveabout/a/q;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    instance-of v1, p1, Lcom/google/android/maps/driveabout/a/q;

    if-eqz v1, :cond_0

    .line 110
    check-cast p1, Lcom/google/android/maps/driveabout/a/q;

    iget v1, p1, Lcom/google/android/maps/driveabout/a/q;->a:I

    iget v2, p0, Lcom/google/android/maps/driveabout/a/q;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/maps/driveabout/a/q;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/maps/driveabout/a/q;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/a/q;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<distance_message distance=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" units=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
