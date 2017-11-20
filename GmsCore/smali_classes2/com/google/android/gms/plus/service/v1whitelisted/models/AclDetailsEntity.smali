.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/r;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

.field private static final q:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:I

.field f:I

.field g:F

.field k:I

.field l:F

.field m:I

.field n:F

.field o:I

.field p:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "circle"

    const-string v2, "circle"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "person"

    const-string v2, "person"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/LoggedCircleMemberEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "personCount"

    const-string v2, "personCount"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedAlphabeticalIndividualCount"

    const-string v2, "selectedAlphabeticalIndividualCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedAlphabeticalIndividualCtr"

    const-string v2, "selectedAlphabeticalIndividualCtr"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedAvatarCount"

    const-string v2, "selectedAvatarCount"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedAvatarCtr"

    const-string v2, "selectedAvatarCtr"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedRankedIndividualCount"

    const-string v2, "selectedRankedIndividualCount"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "selectedRankedIndividualCtr"

    const-string v2, "selectedRankedIndividualCtr"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "totalAvatarCount"

    const-string v2, "totalAvatarCount"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    const-string v1, "totalRankedIndividualCount"

    const-string v2, "totalRankedIndividualCount"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->b:I

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

    .line 246
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/util/List;IIFIFIFII)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

    .line 265
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->b:I

    .line 266
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->c:Ljava/util/List;

    .line 267
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->d:Ljava/util/List;

    .line 268
    iput p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->e:I

    .line 269
    iput p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->f:I

    .line 270
    iput p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->g:F

    .line 271
    iput p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->k:I

    .line 272
    iput p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->l:F

    .line 273
    iput p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->m:I

    .line 274
    iput p11, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->n:F

    .line 275
    iput p12, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->o:I

    .line 276
    iput p13, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->p:I

    .line 277
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V
    .locals 4

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 621
    packed-switch v0, :pswitch_data_0

    .line 632
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a float."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :pswitch_1
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->g:F

    .line 635
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    return-void

    .line 626
    :pswitch_2
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->l:F

    goto :goto_0

    .line 629
    :pswitch_3
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->n:F

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 590
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 591
    packed-switch v0, :pswitch_data_0

    .line 611
    :pswitch_0
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

    .line 593
    :pswitch_1
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->e:I

    .line 614
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    return-void

    .line 596
    :pswitch_2
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->f:I

    goto :goto_0

    .line 599
    :pswitch_3
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->k:I

    goto :goto_0

    .line 602
    :pswitch_4
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->m:I

    goto :goto_0

    .line 605
    :pswitch_5
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->o:I

    goto :goto_0

    .line 608
    :pswitch_6
    iput p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->p:I

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 642
    packed-switch v0, :pswitch_data_0

    .line 650
    :pswitch_0
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

    .line 644
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->c:Ljava/util/List;

    .line 654
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    return-void

    .line 647
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a:Ljava/util/Set;

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
    .line 546
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 570
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

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->c:Ljava/util/List;

    .line 568
    :goto_0
    return-object v0

    .line 550
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->d:Ljava/util/List;

    goto :goto_0

    .line 552
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 554
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 556
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_6
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 560
    :pswitch_7
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->l:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 562
    :pswitch_8
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 564
    :pswitch_9
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->n:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 566
    :pswitch_a
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 568
    :pswitch_b
    iget v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 683
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 714
    :goto_0
    return v0

    .line 688
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 689
    goto :goto_0

    .line 692
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;

    .line 693
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

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

    .line 694
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 695
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 697
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 699
    goto :goto_0

    :cond_3
    move v0, v1

    .line 704
    goto :goto_0

    .line 707
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 709
    goto :goto_0

    :cond_5
    move v0, v2

    .line 714
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->q:Ljava/util/HashMap;

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

    .line 672
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 674
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 676
    goto :goto_0

    .line 677
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/s;

    invoke-static {p0, p1}, Lcom/google/android/gms/plus/service/v1whitelisted/models/s;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/AclDetailsEntity;Landroid/os/Parcel;)V

    .line 537
    return-void
.end method
