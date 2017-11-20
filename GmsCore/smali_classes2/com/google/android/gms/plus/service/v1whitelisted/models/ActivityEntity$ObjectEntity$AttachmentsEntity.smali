.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/ab;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/an;

.field private static final n:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

.field f:Ljava/lang/String;

.field g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

.field k:Ljava/lang/String;

.field l:Ljava/util/List;

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1076
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/an;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/an;

    .line 1165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1168
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "action"

    const-string v2, "action"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "content"

    const-string v2, "content"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "deepLink"

    const-string v2, "deepLink"

    const/4 v3, 0x5

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "thumbnails"

    const-string v2, "thumbnails"

    const/16 v3, 0xd

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ThumbnailsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1258
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->b:I

    .line 1259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

    .line 1260
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1275
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

    .line 1276
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->b:I

    .line 1277
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    .line 1278
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->d:Ljava/lang/String;

    .line 1279
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

    .line 1280
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->f:Ljava/lang/String;

    .line 1281
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

    .line 1282
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->k:Ljava/lang/String;

    .line 1283
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->l:Ljava/util/List;

    .line 1284
    iput-object p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->m:Ljava/lang/String;

    .line 1285
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1187
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 3085
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3086
    sparse-switch v0, :sswitch_data_0

    .line 3097
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

    .line 3088
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    .line 3101
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3102
    return-void

    .line 3091
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

    goto :goto_0

    .line 3094
    :sswitch_2
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

    goto :goto_0

    .line 3086
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3061
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3062
    sparse-switch v0, :sswitch_data_0

    .line 3076
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

    .line 3064
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->d:Ljava/lang/String;

    .line 3079
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3080
    return-void

    .line 3067
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 3070
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 3073
    :sswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 3062
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 3107
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3108
    packed-switch v0, :pswitch_data_0

    .line 3113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a known array of custom type.  Found "

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

    .line 3110
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->l:Ljava/util/List;

    .line 3117
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3118
    return-void

    .line 3108
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a:Ljava/util/Set;

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
    .line 1072
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3023
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3041
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

    .line 3025
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ActionEntity;

    .line 3039
    :goto_0
    return-object v0

    .line 3027
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 3029
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$DeepLinkEntity;

    goto :goto_0

    .line 3031
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 3033
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity$ImageEntity;

    goto :goto_0

    .line 3035
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 3037
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->l:Ljava/util/List;

    goto :goto_0

    .line 3039
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 3023
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 3008
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/an;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3146
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 3177
    :goto_0
    return v0

    .line 3151
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 3152
    goto :goto_0

    .line 3155
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;

    .line 3156
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

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

    .line 3157
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3158
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3160
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3162
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3167
    goto :goto_0

    .line 3170
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3172
    goto :goto_0

    :cond_5
    move v0, v2

    .line 3177
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 3133
    const/4 v0, 0x0

    .line 3134
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->n:Ljava/util/HashMap;

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

    .line 3135
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3136
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 3137
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 3139
    goto :goto_0

    .line 3140
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 3013
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/an;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/an;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity$AttachmentsEntity;Landroid/os/Parcel;I)V

    .line 3014
    return-void
.end method
