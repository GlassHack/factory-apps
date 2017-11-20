.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/bz;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;

.field private static final n:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

.field d:Ljava/lang/String;

.field e:Ljava/util/List;

.field f:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

.field g:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

.field k:Ljava/lang/String;

.field l:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "actor"

    const-string v2, "actor"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "inReplyTo"

    const-string v2, "inReplyTo"

    const/4 v3, 0x5

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$InReplyToEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "object"

    const-string v2, "object"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "plusoners"

    const-string v2, "plusoners"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "statusForViewer"

    const-string v2, "statusForViewer"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->b:I

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

    .line 190
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

    .line 206
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->b:I

    .line 207
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    .line 208
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->d:Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->e:Ljava/util/List;

    .line 210
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

    .line 211
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

    .line 212
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->k:Ljava/lang/String;

    .line 213
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

    .line 214
    iput-object p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->m:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 1609
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1610
    sparse-switch v0, :sswitch_data_0

    .line 1624
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

    .line 1612
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    .line 1628
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1629
    return-void

    .line 1615
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

    goto :goto_0

    .line 1618
    :sswitch_2
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

    goto :goto_0

    .line 1621
    :sswitch_3
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

    goto :goto_0

    .line 1610
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1588
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1589
    sparse-switch v0, :sswitch_data_0

    .line 1600
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

    .line 1591
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->d:Ljava/lang/String;

    .line 1603
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1604
    return-void

    .line 1594
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 1597
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 1589
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1634
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 1635
    packed-switch v0, :pswitch_data_0

    .line 1640
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

    .line 1637
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->e:Ljava/util/List;

    .line 1644
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1645
    return-void

    .line 1635
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a:Ljava/util/Set;

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
    .line 1550
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1568
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

    .line 1552
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ActorEntity;

    .line 1566
    :goto_0
    return-object v0

    .line 1554
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 1556
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->e:Ljava/util/List;

    goto :goto_0

    .line 1558
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$ObjectEntity;

    goto :goto_0

    .line 1560
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->g:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$PlusonersEntity;

    goto :goto_0

    .line 1562
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 1564
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->l:Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity$StatusForViewerEntity;

    goto :goto_0

    .line 1566
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
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
    .line 1535
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1673
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 1704
    :goto_0
    return v0

    .line 1678
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 1679
    goto :goto_0

    .line 1682
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;

    .line 1683
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

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

    .line 1684
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1685
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1687
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1689
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1694
    goto :goto_0

    .line 1697
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1699
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1704
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1660
    const/4 v0, 0x0

    .line 1661
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->n:Ljava/util/HashMap;

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

    .line 1662
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1663
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 1664
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1666
    goto :goto_0

    .line 1667
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1540
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/cf;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/CommentEntity;Landroid/os/Parcel;I)V

    .line 1541
    return-void
.end method
