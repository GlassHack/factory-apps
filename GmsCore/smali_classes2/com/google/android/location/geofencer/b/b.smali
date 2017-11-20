.class public final Lcom/google/android/location/geofencer/b/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field public c:Z

.field public d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/google/android/location/geofencer/b/b;->b:J

    .line 42
    iput-wide v0, p0, Lcom/google/android/location/geofencer/b/b;->d:J

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/geofencer/b/b;->e:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/location/geofencer/b/b;->e:I

    if-gez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/b/b;->b()I

    .line 85
    :cond_0
    iget v0, p0, Lcom/google/android/location/geofencer/b/b;->e:I

    return v0
.end method

.method public final a(J)Lcom/google/android/location/geofencer/b/b;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/b;->a:Z

    .line 30
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/b;->b:J

    .line 31
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/b;->a(J)Lcom/google/android/location/geofencer/b/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/b;->b(J)Lcom/google/android/location/geofencer/b/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/b;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 76
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/b;->a:Z

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/b;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 95
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/b;->c:Z

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/b;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iput v0, p0, Lcom/google/android/location/geofencer/b/b;->e:I

    .line 100
    return v0
.end method

.method public final b(J)Lcom/google/android/location/geofencer/b/b;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/b;->c:Z

    .line 47
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/b;->d:J

    .line 48
    return-object p0
.end method
