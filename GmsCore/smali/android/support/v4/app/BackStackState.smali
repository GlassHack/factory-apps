.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:Ljava/util/ArrayList;

.field final k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 102
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 104
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget-object v0, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v1, v0

    move v0, v3

    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    iget-object v2, v1, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 55
    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    goto :goto_0

    .line 57
    :cond_1
    iget v1, p1, Landroid/support/v4/app/a;->d:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 59
    iget-boolean v0, p1, Landroid/support/v4/app/a;->k:Z

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v5, v0

    move v0, v3

    .line 65
    :goto_1
    if-eqz v5, :cond_6

    .line 66
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->c:I

    aput v4, v1, v0

    .line 67
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->p:I

    :goto_2
    aput v0, v1, v2

    .line 68
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, v5, Landroid/support/v4/app/c;->e:I

    aput v2, v0, v4

    .line 69
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->f:I

    aput v4, v0, v1

    .line 70
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->g:I

    aput v4, v0, v2

    .line 71
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/c;->h:I

    aput v4, v0, v1

    .line 72
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 74
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    move v2, v3

    .line 75
    :goto_3
    if-ge v2, v6, :cond_4

    .line 76
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->p:I

    aput v0, v7, v1

    .line 75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_3

    .line 67
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 81
    :goto_4
    iget-object v1, v5, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v5, v1

    goto :goto_1

    .line 79
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v1, v2

    goto :goto_4

    .line 83
    :cond_6
    iget v0, p1, Landroid/support/v4/app/a;->i:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 84
    iget v0, p1, Landroid/support/v4/app/a;->j:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 85
    iget-object v0, p1, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 86
    iget v0, p1, Landroid/support/v4/app/a;->o:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 87
    iget v0, p1, Landroid/support/v4/app/a;->p:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 88
    iget-object v0, p1, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 89
    iget v0, p1, Landroid/support/v4/app/a;->r:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 90
    iget-object v0, p1, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 91
    iget-object v0, p1, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    .line 92
    iget-object v0, p1, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/p;)Landroid/support/v4/app/a;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v6, Landroid/support/v4/app/a;

    invoke-direct {v6, p1}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/p;)V

    move v1, v2

    move v0, v2

    .line 113
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 114
    new-instance v7, Landroid/support/v4/app/c;

    invoke-direct {v7}, Landroid/support/v4/app/c;-><init>()V

    .line 115
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    iput v0, v7, Landroid/support/v4/app/c;->c:I

    .line 116
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Instantiate "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " op #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " base fragment #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    .line 119
    if-ltz v0, :cond_2

    .line 120
    iget-object v4, p1, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 121
    iput-object v0, v7, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 125
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Landroid/support/v4/app/c;->e:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Landroid/support/v4/app/c;->f:I

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    iput v0, v7, Landroid/support/v4/app/c;->g:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    iput v0, v7, Landroid/support/v4/app/c;->h:I

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v5, 0x1

    aget v8, v0, v5

    .line 130
    if-lez v8, :cond_3

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    move v4, v2

    .line 132
    :goto_2
    if-ge v4, v8, :cond_3

    .line 133
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Instantiate "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " set remove fragment #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v9, v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/p;->f:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v5, v3, 0x1

    aget v3, v9, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 136
    iget-object v3, v7, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v3, v5

    goto :goto_2

    .line 123
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v6, v7}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/c;)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    .line 141
    goto/16 :goto_0

    .line 142
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v0, v6, Landroid/support/v4/app/a;->i:I

    .line 143
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v0, v6, Landroid/support/v4/app/a;->j:I

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v0, v6, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    .line 145
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v0, v6, Landroid/support/v4/app/a;->o:I

    .line 146
    iput-boolean v10, v6, Landroid/support/v4/app/a;->k:Z

    .line 147
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v0, v6, Landroid/support/v4/app/a;->p:I

    .line 148
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v0, v6, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    .line 149
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v0, v6, Landroid/support/v4/app/a;->r:I

    .line 150
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v0, v6, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    iput-object v0, v6, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    iput-object v0, v6, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v6, v10}, Landroid/support/v4/app/a;->a(I)V

    .line 154
    return-object v6
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 163
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 169
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 171
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    return-void
.end method
