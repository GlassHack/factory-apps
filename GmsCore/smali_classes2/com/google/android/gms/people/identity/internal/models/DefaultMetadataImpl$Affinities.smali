.class public final Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/b;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 518
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/b;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/b;

    .line 534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 537
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->e:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->e:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 572
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->b:I

    .line 573
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a:Ljava/util/Set;

    .line 574
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;D)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a:Ljava/util/Set;

    .line 584
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->b:I

    .line 585
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->c:Ljava/lang/String;

    .line 586
    iput-wide p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->d:D

    .line 587
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V
    .locals 5

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 724
    packed-switch v0, :pswitch_data_0

    .line 729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a double."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :pswitch_0
    iput-wide p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->d:D

    .line 732
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 733
    return-void

    .line 724
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 738
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 739
    packed-switch v0, :pswitch_data_0

    .line 744
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a String."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->c:Ljava/lang/String;

    .line 747
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    return-void

    .line 739
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 692
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->c:Ljava/lang/String;

    .line 690
    :goto_0
    return-object v0

    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 660
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/b;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 765
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;

    if-nez v0, :cond_0

    move v0, v1

    .line 796
    :goto_0
    return v0

    .line 770
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 771
    goto :goto_0

    .line 774
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;

    .line 775
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 776
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 777
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 779
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 781
    goto :goto_0

    :cond_3
    move v0, v1

    .line 786
    goto :goto_0

    .line 789
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 791
    goto :goto_0

    :cond_5
    move v0, v2

    .line 796
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 753
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 754
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 755
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 756
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 758
    goto :goto_0

    .line 759
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/b;

    invoke-static {p0, p1}, Lcom/google/android/gms/people/identity/internal/models/b;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;Landroid/os/Parcel;)V

    .line 666
    return-void
.end method
