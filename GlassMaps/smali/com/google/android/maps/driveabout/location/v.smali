.class final Lcom/google/android/maps/driveabout/location/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/android/maps/driveabout/location/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    .line 60
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    instance-of v1, p1, Lcom/google/android/maps/driveabout/location/v;

    if-eqz v1, :cond_0

    .line 66
    check-cast p1, Lcom/google/android/maps/driveabout/location/v;

    .line 67
    iget-object v1, p1, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 70
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/v;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/v;->b:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
