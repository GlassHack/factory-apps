.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/u;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/v;

.field private static final m:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/util/List;

.field g:Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

.field k:Ljava/lang/String;

.field l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/v;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/v;

    .line 824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 827
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "aclDetails"

    const-string v2, "aclDetails"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "activityId"

    const-string v2, "activityId"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "alphabeticalAclListCount"

    const-string v2, "alphabeticalAclListCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "gaiaId"

    const-string v2, "gaiaId"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "profile"

    const-string v2, "profile"

    const/16 v3, 0x40

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "profileData"

    const-string v2, "profileData"

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    const-string v1, "targetType"

    const-string v2, "targetType"

    const/16 v3, 0x5c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 916
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b:I

    .line 917
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    .line 918
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;Ljava/lang/String;ILjava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 932
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    .line 933
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b:I

    .line 934
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    .line 935
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->d:Ljava/lang/String;

    .line 936
    iput p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->e:I

    .line 937
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->f:Ljava/util/List;

    .line 938
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    .line 939
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->k:Ljava/lang/String;

    .line 940
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->l:Ljava/util/List;

    .line 941
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1166
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1167
    packed-switch v0, :pswitch_data_0

    .line 1172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be an int."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1169
    :pswitch_0
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->e:I

    .line 1175
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1176
    return-void

    .line 1167
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 1218
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1219
    sparse-switch v0, :sswitch_data_0

    .line 1227
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

    .line 1221
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    .line 1231
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1232
    return-void

    .line 1224
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    goto :goto_0

    .line 1219
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1181
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1182
    sparse-switch v0, :sswitch_data_0

    .line 1190
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

    .line 1184
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->d:Ljava/lang/String;

    .line 1193
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1194
    return-void

    .line 1187
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 1182
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

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
    .line 1130
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1146
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

    .line 1132
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    .line 1144
    :goto_0
    return-object v0

    .line 1134
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 1136
    :sswitch_2
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1138
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->f:Ljava/util/List;

    goto :goto_0

    .line 1140
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedProfileEntity;

    goto :goto_0

    .line 1142
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 1144
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->l:Ljava/util/List;

    goto :goto_0

    .line 1130
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x1b -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_5
        0x5c -> :sswitch_6
    .end sparse-switch
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1199
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1200
    sparse-switch v0, :sswitch_data_0

    .line 1208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be an array of String."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1202
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->f:Ljava/util/List;

    .line 1212
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    return-void

    .line 1205
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->l:Ljava/util/List;

    goto :goto_0

    .line 1200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1115
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/v;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1260
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1291
    :goto_0
    return v0

    .line 1265
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1266
    goto :goto_0

    .line 1269
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;

    .line 1270
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

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

    .line 1271
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1272
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1274
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1276
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1281
    goto :goto_0

    .line 1284
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1286
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1291
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->m:Ljava/util/HashMap;

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

    .line 1249
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1250
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1251
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1253
    goto :goto_0

    .line 1254
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1120
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/v;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/v;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActionTargetEntity;Landroid/os/Parcel;I)V

    .line 1121
    return-void
.end method
