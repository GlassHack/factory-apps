.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/b;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/a;

.field private static final o:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Z

.field e:Ljava/lang/String;

.field f:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

.field g:Z

.field k:Ljava/util/List;

.field l:Ljava/lang/String;

.field m:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

.field n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/a;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/a;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "errors"

    const-string v2, "errors"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ErrorsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "hidden"

    const-string v2, "hidden"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "label"

    const-string v2, "label"

    const/4 v3, 0x6

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "mandatory"

    const-string v2, "mandatory"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "options"

    const-string v2, "options"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$OptionsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    const-string v1, "version"

    const-string v2, "version"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->b:I

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    .line 203
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;ZLjava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;ZLjava/util/List;Ljava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    .line 220
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->b:I

    .line 221
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->c:Ljava/util/List;

    .line 222
    iput-boolean p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->d:Z

    .line 223
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->e:Ljava/lang/String;

    .line 224
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    .line 225
    iput-boolean p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->g:Z

    .line 226
    iput-object p8, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->k:Ljava/util/List;

    .line 227
    iput-object p9, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->l:Ljava/lang/String;

    .line 228
    iput-object p10, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    .line 229
    iput-object p11, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->n:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 2374
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2375
    sparse-switch v0, :sswitch_data_0

    .line 2383
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

    .line 2377
    :sswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    .line 2387
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2388
    return-void

    .line 2380
    :sswitch_1
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    goto :goto_0

    .line 2375
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2353
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2354
    sparse-switch v0, :sswitch_data_0

    .line 2365
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

    .line 2356
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->e:Ljava/lang/String;

    .line 2368
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2369
    return-void

    .line 2359
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->l:Ljava/lang/String;

    goto :goto_0

    .line 2362
    :sswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->n:Ljava/lang/String;

    goto :goto_0

    .line 2354
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 2393
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2394
    sparse-switch v0, :sswitch_data_0

    .line 2402
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

    .line 2396
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->c:Ljava/util/List;

    .line 2406
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2407
    return-void

    .line 2399
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->k:Ljava/util/List;

    goto :goto_0

    .line 2394
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 2335
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2336
    sparse-switch v0, :sswitch_data_0

    .line 2344
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

    .line 2338
    :sswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->d:Z

    .line 2347
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2348
    return-void

    .line 2341
    :sswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->g:Z

    goto :goto_0

    .line 2336
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a:Ljava/util/Set;

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
    .line 2295
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2315
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

    .line 2297
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->c:Ljava/util/List;

    .line 2313
    :goto_0
    return-object v0

    .line 2299
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2301
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->e:Ljava/lang/String;

    goto :goto_0

    .line 2303
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->f:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$LabelEntity;

    goto :goto_0

    .line 2305
    :pswitch_5
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2307
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->k:Ljava/util/List;

    goto :goto_0

    .line 2309
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->l:Ljava/lang/String;

    goto :goto_0

    .line 2311
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->m:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    goto :goto_0

    .line 2313
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->n:Ljava/lang/String;

    goto :goto_0

    .line 2295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 2280
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/a;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2435
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;

    if-nez v0, :cond_0

    move v0, v1

    .line 2466
    :goto_0
    return v0

    .line 2440
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 2441
    goto :goto_0

    .line 2444
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;

    .line 2445
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

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

    .line 2446
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2447
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2449
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2451
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2456
    goto :goto_0

    .line 2459
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2461
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2466
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 2422
    const/4 v0, 0x0

    .line 2423
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->o:Ljava/util/HashMap;

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

    .line 2424
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2425
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 2426
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 2428
    goto :goto_0

    .line 2429
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2285
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/a;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField;Landroid/os/Parcel;I)V

    .line 2286
    return-void
.end method
