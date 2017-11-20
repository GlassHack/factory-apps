.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/dm;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;

.field private static final p:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/util/List;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

.field k:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

.field l:Ljava/lang/String;

.field m:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "emails"

    const-string v2, "emails"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$EmailsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "etag"

    const-string v2, "etag"

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0x10

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x14

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "statusForViewer"

    const-string v2, "statusForViewer"

    const/16 v3, 0x1d

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "suggestionId"

    const-string v2, "suggestionId"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->b:I

    .line 372
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

    .line 373
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

    .line 391
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->b:I

    .line 392
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->c:Ljava/lang/String;

    .line 393
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->d:Ljava/util/List;

    .line 394
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->e:Ljava/lang/String;

    .line 395
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->f:Ljava/lang/String;

    .line 396
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

    .line 397
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->k:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    .line 398
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->l:Ljava/lang/String;

    .line 399
    iput-object p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    .line 400
    iput-object p11, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->n:Ljava/lang/String;

    .line 401
    iput-object p12, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->o:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 1670
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1671
    sparse-switch v0, :sswitch_data_0

    .line 1682
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

    .line 1673
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

    .line 1686
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1687
    return-void

    .line 1676
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->k:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    goto :goto_0

    .line 1679
    :sswitch_2
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    goto :goto_0

    .line 1671
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1640
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1641
    sparse-switch v0, :sswitch_data_0

    .line 1661
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

    .line 1643
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->c:Ljava/lang/String;

    .line 1664
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1665
    return-void

    .line 1646
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 1649
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 1652
    :sswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->l:Ljava/lang/String;

    goto :goto_0

    .line 1655
    :sswitch_4
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->n:Ljava/lang/String;

    goto :goto_0

    .line 1658
    :sswitch_5
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->o:Ljava/lang/String;

    goto :goto_0

    .line 1641
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x16 -> :sswitch_3
        0x1e -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1692
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1693
    packed-switch v0, :pswitch_data_0

    .line 1698
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

    .line 1695
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->d:Ljava/util/List;

    .line 1702
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1703
    return-void

    .line 1693
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a:Ljava/util/Set;

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
    .line 1598
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1620
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

    .line 1600
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->c:Ljava/lang/String;

    .line 1618
    :goto_0
    return-object v0

    .line 1602
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 1604
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 1606
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 1608
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$ImageEntity;

    goto :goto_0

    .line 1610
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->k:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$NameEntity;

    goto :goto_0

    .line 1612
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->l:Ljava/lang/String;

    goto :goto_0

    .line 1614
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity$StatusForViewerEntity;

    goto :goto_0

    .line 1616
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->n:Ljava/lang/String;

    goto :goto_0

    .line 1618
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->o:Ljava/lang/String;

    goto :goto_0

    .line 1598
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 1583
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1731
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1762
    :goto_0
    return v0

    .line 1736
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1737
    goto :goto_0

    .line 1740
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;

    .line 1741
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

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

    .line 1742
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1743
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1745
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1747
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1752
    goto :goto_0

    .line 1755
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1757
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1762
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1718
    const/4 v0, 0x0

    .line 1719
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->p:Ljava/util/HashMap;

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

    .line 1720
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1721
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1722
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1724
    goto :goto_0

    .line 1725
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1588
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/dr;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/PersonEntity;Landroid/os/Parcel;I)V

    .line 1589
    return-void
.end method
