.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ac;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1485
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;

    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1508
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

    const-string v1, "deepLink"

    const-string v2, "deepLink"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1550
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1551
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->b:I

    .line 1552
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a:Ljava/util/Set;

    .line 1553
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1562
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1563
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a:Ljava/util/Set;

    .line 1564
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->b:I

    .line 1565
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

    .line 1566
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->d:Ljava/lang/String;

    .line 1567
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->e:Ljava/lang/String;

    .line 1568
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1517
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 1951
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1952
    packed-switch v0, :pswitch_data_0

    .line 1957
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known custom type.  Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1954
    :pswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

    .line 1961
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1962
    return-void

    .line 1952
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1933
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1934
    packed-switch v0, :pswitch_data_0

    .line 1942
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

    .line 1936
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->d:Ljava/lang/String;

    .line 1945
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1946
    return-void

    .line 1939
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 1934
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a:Ljava/util/Set;

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
    .line 1481
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1905
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1913
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

    .line 1907
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity$DeepLinkEntity;

    .line 1911
    :goto_0
    return-object v0

    .line 1909
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 1911
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 1905
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1890
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1990
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 2021
    :goto_0
    return v0

    .line 1995
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1996
    goto :goto_0

    .line 1999
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    .line 2000
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

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

    .line 2001
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2002
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2004
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2006
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2011
    goto :goto_0

    .line 2014
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2016
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2021
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1977
    const/4 v0, 0x0

    .line 1978
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->f:Ljava/util/HashMap;

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

    .line 1979
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1980
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1981
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1983
    goto :goto_0

    .line 1984
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1895
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ao;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;Landroid/os/Parcel;I)V

    .line 1896
    return-void
.end method
