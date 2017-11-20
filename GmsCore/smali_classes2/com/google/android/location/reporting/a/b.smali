.class public final Lcom/google/android/location/reporting/a/b;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/b;->G:I

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 166
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 170
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 174
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 178
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 181
    :cond_5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/reporting/a/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 143
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 146
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 149
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 151
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 152
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 60
    const/4 v0, 0x1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/reporting/a/b;

    if-eqz v1, :cond_0

    .line 65
    check-cast p1, Lcom/google/android/location/reporting/a/b;

    .line 66
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 67
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 74
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 81
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    .line 88
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_c

    .line 95
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 101
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 102
    iget-object v1, p1, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 108
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/a/b;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 77
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 84
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 91
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 98
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 105
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_3

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/a/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_4

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_5
.end method
