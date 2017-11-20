.class public final Lcom/google/android/maps/driveabout/a/s;
.super Lcom/google/android/maps/driveabout/a/m;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/m;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    .line 128
    iput p1, p0, Lcom/google/android/maps/driveabout/a/s;->a:I

    .line 129
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/maps/driveabout/a/s;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    instance-of v1, p1, Lcom/google/android/maps/driveabout/a/s;

    if-eqz v1, :cond_0

    .line 143
    check-cast p1, Lcom/google/android/maps/driveabout/a/s;

    iget v1, p1, Lcom/google/android/maps/driveabout/a/s;->a:I

    iget v2, p0, Lcom/google/android/maps/driveabout/a/s;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/maps/driveabout/a/s;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/maps/driveabout/a/s;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<predefined_message type=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
