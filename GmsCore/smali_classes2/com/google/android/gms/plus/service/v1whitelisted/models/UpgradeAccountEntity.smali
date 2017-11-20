.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ee;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;

.field private static final f:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

.field d:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

    const-string v1, "form"

    const-string v2, "form"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->b:I

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a:Ljava/util/Set;

    .line 116
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a:Ljava/util/Set;

    .line 127
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->b:I

    .line 128
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    .line 129
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

    .line 130
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->e:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 1009
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1010
    packed-switch v0, :pswitch_data_0

    .line 1018
    :pswitch_0
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

    .line 1012
    :pswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    .line 1022
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1023
    return-void

    .line 1015
    :pswitch_2
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 994
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 995
    packed-switch v0, :pswitch_data_0

    .line 1000
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

    .line 997
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->e:Ljava/lang/String;

    .line 1003
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void

    .line 995
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a:Ljava/util/Set;

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
    .line 22
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 966
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 974
    :pswitch_0
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

    .line 968
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$DescriptionEntity;

    .line 972
    :goto_0
    return-object v0

    .line 970
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->d:Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity$FormEntity;

    goto :goto_0

    .line 972
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 951
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1051
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1082
    :goto_0
    return v0

    .line 1056
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1057
    goto :goto_0

    .line 1060
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;

    .line 1061
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

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

    .line 1062
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1063
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1065
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1067
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1072
    goto :goto_0

    .line 1075
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1077
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1082
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->f:Ljava/util/HashMap;

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

    .line 1040
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1041
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1042
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1044
    goto :goto_0

    .line 1045
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 956
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ei;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/UpgradeAccountEntity;Landroid/os/Parcel;I)V

    .line 957
    return-void
.end method
