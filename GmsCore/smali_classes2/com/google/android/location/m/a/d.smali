.class public final Lcom/google/android/location/m/a/d;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile h:[Lcom/google/android/location/m/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/d;->G:I

    .line 46
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/d;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/d;->h:[Lcom/google/android/location/m/a/d;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/d;->h:[Lcom/google/android/location/m/a/d;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/d;

    sput-object v0, Lcom/google/android/location/m/a/d;->h:[Lcom/google/android/location/m/a/d;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/d;->h:[Lcom/google/android/location/m/a/d;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 182
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 186
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 190
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 194
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 198
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 156
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 159
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 162
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 165
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 167
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 168
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/d;

    if-eqz v1, :cond_0

    .line 69
    check-cast p1, Lcom/google/android/location/m/a/d;

    .line 70
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 71
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 78
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 92
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 99
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 105
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    if-nez v1, :cond_e

    .line 106
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 112
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 113
    iget-object v1, p1, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 119
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/d;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 81
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 88
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 95
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 102
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 109
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 116
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 127
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_5

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method
