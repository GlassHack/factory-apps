.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/q;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/t;

.field private static final p:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/util/List;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/t;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/t;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "accessSummary"

    const-string v2, "accessSummary"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "domainRestricted"

    const-string v2, "domainRestricted"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "etag"

    const-string v2, "etag"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "items"

    const-string v2, "items"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/PlusAclentryResourceEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "readOnly"

    const-string v2, "readOnly"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "restricted"

    const-string v2, "restricted"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "showCircles"

    const-string v2, "showCircles"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "showContacts"

    const-string v2, "showContacts"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->b:I

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

    .line 190
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

    .line 208
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->b:I

    .line 209
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->c:Ljava/lang/String;

    .line 210
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->d:Ljava/lang/String;

    .line 211
    iput-boolean p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->e:Z

    .line 212
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->f:Ljava/lang/String;

    .line 213
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->g:Ljava/util/List;

    .line 214
    iput-boolean p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->k:Z

    .line 215
    iput-boolean p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->l:Z

    .line 216
    iput-boolean p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->m:Z

    .line 217
    iput-boolean p11, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->n:Z

    .line 218
    iput-object p12, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->o:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 517
    sparse-switch v0, :sswitch_data_0

    .line 531
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

    .line 519
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->c:Ljava/lang/String;

    .line 534
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    return-void

    .line 522
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 525
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 528
    :sswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->o:Ljava/lang/String;

    goto :goto_0

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 540
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 541
    packed-switch v0, :pswitch_data_0

    .line 546
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

    .line 543
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->g:Ljava/util/List;

    .line 550
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    return-void

    .line 541
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 490
    packed-switch v0, :pswitch_data_0

    .line 507
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a boolean."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :pswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->e:Z

    .line 510
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    return-void

    .line 495
    :pswitch_2
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->k:Z

    goto :goto_0

    .line 498
    :pswitch_3
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->l:Z

    goto :goto_0

    .line 501
    :pswitch_4
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->m:Z

    goto :goto_0

    .line 504
    :pswitch_5
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->n:Z

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a:Ljava/util/Set;

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
    .line 447
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 469
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

    .line 449
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->c:Ljava/lang/String;

    .line 467
    :goto_0
    return-object v0

    .line 451
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 453
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 457
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->g:Ljava/util/List;

    goto :goto_0

    .line 459
    :pswitch_6
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 461
    :pswitch_7
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 463
    :pswitch_8
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->m:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 465
    :pswitch_9
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 467
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->o:Ljava/lang/String;

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/t;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 579
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 610
    :goto_0
    return v0

    .line 584
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 585
    goto :goto_0

    .line 588
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 589
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

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

    .line 590
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 591
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 593
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 595
    goto :goto_0

    :cond_3
    move v0, v1

    .line 600
    goto :goto_0

    .line 603
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 605
    goto :goto_0

    :cond_5
    move v0, v2

    .line 610
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->p:Ljava/util/HashMap;

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

    .line 568
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 570
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 572
    goto :goto_0

    .line 573
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/t;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/t;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;Landroid/os/Parcel;)V

    .line 438
    return-void
.end method
