.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/y;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;

.field private static final o:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

.field g:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "access"

    const-string v2, "access"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "annotation"

    const-string v2, "annotation"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "object"

    const-string v2, "object"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "placeName"

    const-string v2, "placeName"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    const/16 v3, 0x13

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    const-string v1, "verb"

    const-string v2, "verb"

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->b:I

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a:Ljava/util/Set;

    .line 295
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a:Ljava/util/Set;

    .line 312
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->b:I

    .line 313
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 314
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->d:Ljava/lang/String;

    .line 315
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->e:Ljava/lang/String;

    .line 316
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

    .line 317
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->g:Ljava/lang/String;

    .line 318
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->k:Ljava/lang/String;

    .line 319
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->l:Ljava/lang/String;

    .line 320
    iput-object p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->m:Ljava/lang/String;

    .line 321
    iput-object p11, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->n:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 3870
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3871
    sparse-switch v0, :sswitch_data_0

    .line 3879
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

    .line 3873
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 3883
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3884
    return-void

    .line 3876
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

    goto :goto_0

    .line 3871
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3837
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 3838
    sparse-switch v0, :sswitch_data_0

    .line 3861
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

    .line 3840
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->d:Ljava/lang/String;

    .line 3864
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3865
    return-void

    .line 3843
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 3846
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 3849
    :sswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 3852
    :sswitch_4
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->l:Ljava/lang/String;

    goto :goto_0

    .line 3855
    :sswitch_5
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 3858
    :sswitch_6
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->n:Ljava/lang/String;

    goto :goto_0

    .line 3838
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x13 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a:Ljava/util/Set;

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
    .line 3797
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3817
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

    .line 3799
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->c:Lcom/google/android/gms/plus/service/v1whitelisted/models/AclEntity;

    .line 3815
    :goto_0
    return-object v0

    .line 3801
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 3803
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->e:Ljava/lang/String;

    goto :goto_0

    .line 3805
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity$ObjectEntity;

    goto :goto_0

    .line 3807
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 3809
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->k:Ljava/lang/String;

    goto :goto_0

    .line 3811
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->l:Ljava/lang/String;

    goto :goto_0

    .line 3813
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->m:Ljava/lang/String;

    goto :goto_0

    .line 3815
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->n:Ljava/lang/String;

    goto :goto_0

    .line 3797
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x11 -> :sswitch_4
        0x13 -> :sswitch_5
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
    .end sparse-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 3782
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3912
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 3943
    :goto_0
    return v0

    .line 3917
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 3918
    goto :goto_0

    .line 3921
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;

    .line 3922
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

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

    .line 3923
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3924
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3926
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 3928
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3933
    goto :goto_0

    .line 3936
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3938
    goto :goto_0

    :cond_5
    move v0, v2

    .line 3943
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 3899
    const/4 v0, 0x0

    .line 3900
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->o:Ljava/util/HashMap;

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

    .line 3901
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3902
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 3903
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 3905
    goto :goto_0

    .line 3906
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 3787
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ak;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/ActivityEntity;Landroid/os/Parcel;I)V

    .line 3788
    return-void
.end method
