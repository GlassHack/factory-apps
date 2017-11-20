.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Lcom/google/android/gtalkservice/Presence;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gtalkservice/Presence$Show;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->a:Lcom/google/android/gtalkservice/Presence;

    .line 536
    new-instance v0, Lcom/google/android/gtalkservice/d;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(I)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->b(I)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->c(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->b(Z)V

    .line 104
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->a(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/google/android/gtalkservice/Presence;->c(Z)Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;->d(I)V

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    :cond_2
    move v1, v2

    .line 108
    goto :goto_2
.end method

.method private constructor <init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 84
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/Presence$Show;

    .line 85
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    .line 89
    iput p4, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    .line 90
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->h:I

    return v0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->h:I

    .line 158
    return-void
.end method

.method private a(Lcom/google/android/gtalkservice/Presence$Show;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/Presence$Show;

    .line 289
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->k:Z

    .line 220
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->i:I

    return v0
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->i:I

    .line 178
    return-void
.end method

.method private b(Z)V
    .locals 0

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 240
    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->j:I

    return v0
.end method

.method private c(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->j:I

    .line 198
    return-void
.end method

.method private c(Z)Z
    .locals 1

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    .line 262
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    .line 429
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->k:Z

    return v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    return v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const-string v0, "UNAVAILABLE"

    .line 577
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 559
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_6

    .line 560
    const-string v1, "AVAILABLE(x)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :goto_1
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 566
    const-string v1, " pmuc-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_2
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 569
    const-string v1, " voice-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_3
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 572
    const-string v1, " video-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_4
    iget v1, p0, Lcom/google/android/gtalkservice/Presence;->l:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 575
    const-string v1, " camera-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_6
    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 529
    invoke-direct {p0}, Lcom/google/android/gtalkservice/Presence;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    return-void

    :cond_0
    move v0, v2

    .line 520
    goto :goto_0

    :cond_1
    move v0, v2

    .line 522
    goto :goto_1

    :cond_2
    move v1, v2

    .line 525
    goto :goto_2
.end method
