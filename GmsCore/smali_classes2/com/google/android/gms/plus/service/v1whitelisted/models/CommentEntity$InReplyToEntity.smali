.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/cb;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;

.field private static final e:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 641
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 659
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->e:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->e:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->b:I

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a:Ljava/util/Set;

    .line 695
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a:Ljava/util/Set;

    .line 705
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->b:I

    .line 706
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->c:Ljava/lang/String;

    .line 707
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->d:Ljava/lang/String;

    .line 708
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 802
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 803
    packed-switch v0, :pswitch_data_0

    .line 811
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

    .line 805
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->c:Ljava/lang/String;

    .line 814
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    return-void

    .line 808
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 637
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 776
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 782
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

    .line 778
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->c:Ljava/lang/String;

    .line 780
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 776
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 761
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 843
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 874
    :goto_0
    return v0

    .line 848
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 849
    goto :goto_0

    .line 852
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;

    .line 853
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->e:Ljava/util/HashMap;

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

    .line 854
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 855
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 857
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 859
    goto :goto_0

    :cond_3
    move v0, v1

    .line 864
    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 869
    goto :goto_0

    :cond_5
    move v0, v2

    .line 874
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->e:Ljava/util/HashMap;

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

    .line 832
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 834
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 836
    goto :goto_0

    .line 837
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 766
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ch;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;Landroid/os/Parcel;)V

    .line 767
    return-void
.end method
