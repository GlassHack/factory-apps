.class public final Lcom/google/android/location/reporting/a/i;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/reporting/a/i;->b:J

    .line 37
    iput v2, p0, Lcom/google/android/location/reporting/a/i;->d:I

    .line 54
    iput v2, p0, Lcom/google/android/location/reporting/a/i;->f:I

    .line 71
    iput-boolean v2, p0, Lcom/google/android/location/reporting/a/i;->h:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/i;->i:I

    .line 8
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/location/reporting/a/i;->i:I

    if-gez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/i;->b()I

    .line 122
    :cond_0
    iget v0, p0, Lcom/google/android/location/reporting/a/i;->i:I

    return v0
.end method

.method public final a(I)Lcom/google/android/location/reporting/a/i;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->c:Z

    .line 42
    iput p1, p0, Lcom/google/android/location/reporting/a/i;->d:I

    .line 43
    return-object p0
.end method

.method public final a(J)Lcom/google/android/location/reporting/a/i;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->a:Z

    .line 25
    iput-wide p1, p0, Lcom/google/android/location/reporting/a/i;->b:J

    .line 26
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/location/reporting/a/i;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->g:Z

    .line 76
    iput-boolean p1, p0, Lcom/google/android/location/reporting/a/i;->h:Z

    .line 77
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 5
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

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/reporting/a/i;->a(J)Lcom/google/android/location/reporting/a/i;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/i;->a(I)Lcom/google/android/location/reporting/a/i;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/i;->b(I)Lcom/google/android/location/reporting/a/i;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/reporting/a/i;->a(Z)Lcom/google/android/location/reporting/a/i;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->a:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/i;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->c:Z

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/location/reporting/a/i;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->b(II)V

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->e:Z

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/location/reporting/a/i;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 110
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->g:Z

    if-eqz v0, :cond_3

    .line 111
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/i;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 113
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/i;->a:Z

    if-eqz v1, :cond_0

    .line 129
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/location/reporting/a/i;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 132
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/i;->c:Z

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/location/reporting/a/i;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/i;->e:Z

    if-eqz v1, :cond_2

    .line 137
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/location/reporting/a/i;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/reporting/a/i;->g:Z

    if-eqz v1, :cond_3

    .line 141
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/location/reporting/a/i;->h:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 144
    :cond_3
    iput v0, p0, Lcom/google/android/location/reporting/a/i;->i:I

    .line 145
    return v0
.end method

.method public final b(I)Lcom/google/android/location/reporting/a/i;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/reporting/a/i;->e:Z

    .line 59
    iput p1, p0, Lcom/google/android/location/reporting/a/i;->f:I

    .line 60
    return-object p0
.end method
