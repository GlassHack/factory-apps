.class public final Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/q;

.field private static final v:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Ljava/util/List;

.field f:Z

.field g:Ljava/util/List;

.field k:Ljava/util/List;

.field l:Z

.field m:Ljava/util/List;

.field n:Z

.field o:Ljava/util/List;

.field p:J

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/util/List;

.field t:Ljava/util/List;

.field u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 6879
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/q;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/q;

    .line 6983
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6986
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "affinities"

    const-string v2, "affinities"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata$Affinities;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6988
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "attributions"

    const-string v2, "attributions"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6989
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "blockTypes"

    const-string v2, "blockTypes"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6990
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "blocked"

    const-string v2, "blocked"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6991
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "circles"

    const-string v2, "circles"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6992
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "contacts"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6993
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6994
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "groups"

    const-string v2, "groups"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6995
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "inViewerDomain"

    const-string v2, "inViewerDomain"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6996
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "incomingBlockTypes"

    const-string v2, "incomingBlockTypes"

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6997
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "lastUpdateTimeMicros"

    const-string v2, "lastUpdateTimeMicros"

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6998
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6999
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "ownerId"

    const-string v2, "ownerId"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7000
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "ownerUserTypes"

    const-string v2, "ownerUserTypes"

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7001
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "peopleInCommon"

    const-string v2, "peopleInCommon"

    const/16 v3, 0x10

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7003
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    const-string v1, "plusPageType"

    const-string v2, "plusPageType"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7004
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7138
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 7139
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->b:I

    .line 7140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    .line 7141
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;Ljava/util/List;ZLjava/util/List;ZLjava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7163
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 7164
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    .line 7165
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->b:I

    .line 7166
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->c:Ljava/util/List;

    .line 7167
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->d:Ljava/util/List;

    .line 7168
    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->e:Ljava/util/List;

    .line 7169
    iput-boolean p6, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->f:Z

    .line 7170
    iput-object p7, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->g:Ljava/util/List;

    .line 7171
    iput-object p8, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->k:Ljava/util/List;

    .line 7172
    iput-boolean p9, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->l:Z

    .line 7173
    iput-object p10, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->m:Ljava/util/List;

    .line 7174
    iput-boolean p11, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->n:Z

    .line 7175
    iput-object p12, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->o:Ljava/util/List;

    .line 7176
    iput-wide p13, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->p:J

    .line 7177
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->q:Ljava/lang/String;

    .line 7178
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->r:Ljava/lang/String;

    .line 7179
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->s:Ljava/util/List;

    .line 7180
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->t:Ljava/util/List;

    .line 7181
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->u:Ljava/lang/String;

    .line 7182
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 7008
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 8181
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 8182
    packed-switch v0, :pswitch_data_0

    .line 8187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not known to be a long."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8184
    :pswitch_0
    iput-wide p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->p:J

    .line 8190
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8191
    return-void

    .line 8182
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 8217
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 8218
    packed-switch v0, :pswitch_data_0

    .line 8229
    :pswitch_0
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

    .line 8220
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->q:Ljava/lang/String;

    .line 8232
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8233
    return-void

    .line 8223
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->r:Ljava/lang/String;

    goto :goto_0

    .line 8226
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->u:Ljava/lang/String;

    goto :goto_0

    .line 8218
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 8272
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 8273
    sparse-switch v0, :sswitch_data_0

    .line 8281
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

    .line 8275
    :sswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->c:Ljava/util/List;

    .line 8285
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8286
    return-void

    .line 8278
    :sswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->t:Ljava/util/List;

    goto :goto_0

    .line 8273
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 8196
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 8197
    packed-switch v0, :pswitch_data_0

    .line 8208
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

    .line 8199
    :pswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->f:Z

    .line 8211
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8212
    return-void

    .line 8202
    :pswitch_2
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->l:Z

    goto :goto_0

    .line 8205
    :pswitch_3
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->n:Z

    goto :goto_0

    .line 8197
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 8111
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8116
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8150
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

    .line 8118
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->c:Ljava/util/List;

    .line 8148
    :goto_0
    return-object v0

    .line 8120
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->d:Ljava/util/List;

    goto :goto_0

    .line 8122
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->e:Ljava/util/List;

    goto :goto_0

    .line 8124
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 8126
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->g:Ljava/util/List;

    goto :goto_0

    .line 8128
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->k:Ljava/util/List;

    goto :goto_0

    .line 8130
    :pswitch_6
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 8132
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->m:Ljava/util/List;

    goto :goto_0

    .line 8134
    :pswitch_8
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 8136
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->o:Ljava/util/List;

    goto :goto_0

    .line 8138
    :pswitch_a
    iget-wide v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 8140
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->q:Ljava/lang/String;

    goto :goto_0

    .line 8142
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->r:Ljava/lang/String;

    goto :goto_0

    .line 8144
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->s:Ljava/util/List;

    goto :goto_0

    .line 8146
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->t:Ljava/util/List;

    goto :goto_0

    .line 8148
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->u:Ljava/lang/String;

    goto :goto_0

    .line 8116
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 8238
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 8239
    packed-switch v0, :pswitch_data_0

    .line 8262
    :pswitch_0
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

    .line 8241
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->d:Ljava/util/List;

    .line 8266
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8267
    return-void

    .line 8244
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->e:Ljava/util/List;

    goto :goto_0

    .line 8247
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->g:Ljava/util/List;

    goto :goto_0

    .line 8250
    :pswitch_4
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->k:Ljava/util/List;

    goto :goto_0

    .line 8253
    :pswitch_5
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->m:Ljava/util/List;

    goto :goto_0

    .line 8256
    :pswitch_6
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->o:Ljava/util/List;

    goto :goto_0

    .line 8259
    :pswitch_7
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->s:Ljava/util/List;

    goto :goto_0

    .line 8239
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 8106
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 8090
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/q;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8303
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    if-nez v0, :cond_0

    move v0, v1

    .line 8334
    :goto_0
    return v0

    .line 8308
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 8309
    goto :goto_0

    .line 8312
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;

    .line 8313
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

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

    .line 8314
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8315
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8317
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 8319
    goto :goto_0

    :cond_3
    move v0, v1

    .line 8324
    goto :goto_0

    .line 8327
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 8329
    goto :goto_0

    :cond_5
    move v0, v2

    .line 8334
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 8290
    const/4 v0, 0x0

    .line 8291
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->v:Ljava/util/HashMap;

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

    .line 8292
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8293
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 8294
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 8296
    goto :goto_0

    .line 8297
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 8095
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/q;

    invoke-static {p0, p1}, Lcom/google/android/gms/people/identity/internal/models/q;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultPersonImpl$Metadata;Landroid/os/Parcel;)V

    .line 8096
    return-void
.end method
