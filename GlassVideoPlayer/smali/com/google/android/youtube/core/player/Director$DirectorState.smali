.class public final Lcom/google/android/youtube/core/player/Director$DirectorState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

.field public final b:Lcom/google/android/youtube/core/model/VastAd;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

.field public final i:Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

.field public final j:Ljava/util/Map;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1745
    new-instance v0, Lcom/google/android/youtube/core/player/g;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/g;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/player/Director$DirectorState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1731
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    invoke-static {}, Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;->values()[Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->a:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    .line 1784
    const-class v0, Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/VastAd;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->b:Lcom/google/android/youtube/core/model/VastAd;

    .line 1786
    const-class v0, Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

    .line 1785
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->i:Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

    .line 1788
    const-class v0, Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1787
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->h:Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    .line 1789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->c:Z

    .line 1790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->d:Z

    .line 1791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->f:I

    .line 1792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->g:I

    .line 1793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->e:Z

    .line 1794
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->j:Ljava/util/Map;

    .line 1795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->k:Z

    .line 1796
    return-void

    :cond_0
    move v0, v2

    .line 1789
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1790
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1793
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1795
    goto :goto_3
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 1815
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Director.DirectorState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1821
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1822
    const-string v1, " feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->a:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1823
    const-string v1, " ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->b:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1824
    const-string v1, " adStatsClientState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->i:Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1825
    const-string v1, " statsClientState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->h:Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1826
    const-string v1, " isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1827
    const-string v1, " wasEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1828
    const-string v1, " hq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1829
    const-string v1, " adStartPositionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1830
    const-string v1, " videoStartPositionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1831
    const-string v1, " streamParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1832
    const-string v1, " userInitiatedPlayback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1833
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1800
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->a:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->b:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1802
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->i:Lcom/google/android/youtube/core/client/AdStatsClient$AdStatsClientState;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1803
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->h:Lcom/google/android/youtube/core/client/VideoStats2Client$VideoStats2ClientState;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1804
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1805
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1806
    iget v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    iget v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->j:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1810
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director$DirectorState;->k:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    return-void

    :cond_0
    move v0, v2

    .line 1804
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1805
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1808
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1810
    goto :goto_3
.end method
