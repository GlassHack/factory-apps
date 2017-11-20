.class public final Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;
.super Lcom/google/android/gms/common/server/response/FastJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/models/a;

.field private static final o:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Ljava/util/List;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gms/people/identity/internal/models/a;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/models/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/a;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    sput-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "affinities"

    const-string v2, "affinities"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl$Affinities;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "container"

    const-string v2, "container"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "containerContactId"

    const-string v2, "containerContactId"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "containerId"

    const-string v2, "containerId"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "edgeKey"

    const-string v2, "edgeKey"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "primary"

    const-string v2, "primary"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    const-string v1, "writeable"

    const-string v2, "writeable"

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->b:I

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

    .line 189
    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

    .line 206
    iput p2, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->b:I

    .line 207
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->c:Ljava/util/List;

    .line 208
    iput-object p4, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->d:Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->e:Ljava/lang/String;

    .line 210
    iput-object p6, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->f:Ljava/lang/String;

    .line 211
    iput-boolean p7, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->g:Z

    .line 212
    iput-boolean p8, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->k:Z

    .line 213
    iput-boolean p9, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->l:Z

    .line 214
    iput-object p10, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->m:Ljava/lang/String;

    .line 215
    iput-boolean p11, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->n:Z

    .line 216
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 903
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 904
    packed-switch v0, :pswitch_data_0

    .line 918
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

    .line 906
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->d:Ljava/lang/String;

    .line 921
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    return-void

    .line 909
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->e:Ljava/lang/String;

    goto :goto_0

    .line 912
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->f:Ljava/lang/String;

    goto :goto_0

    .line 915
    :pswitch_4
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->m:Ljava/lang/String;

    goto :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 927
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 928
    packed-switch v0, :pswitch_data_0

    .line 933
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

    .line 930
    :pswitch_0
    iput-object p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->c:Ljava/util/List;

    .line 937
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    return-void

    .line 928
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 879
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 880
    packed-switch v0, :pswitch_data_0

    .line 894
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

    .line 882
    :pswitch_1
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->g:Z

    .line 897
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 898
    return-void

    .line 885
    :pswitch_2
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->k:Z

    goto :goto_0

    .line 888
    :pswitch_3
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->l:Z

    goto :goto_0

    .line 891
    :pswitch_4
    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->n:Z

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a:Ljava/util/Set;

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
    .line 828
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 848
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

    .line 830
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->c:Ljava/util/List;

    .line 846
    :goto_0
    return-object v0

    .line 832
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->d:Ljava/lang/String;

    goto :goto_0

    .line 834
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->e:Ljava/lang/String;

    goto :goto_0

    .line 836
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->f:Ljava/lang/String;

    goto :goto_0

    .line 838
    :pswitch_4
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 840
    :pswitch_5
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 842
    :pswitch_6
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 844
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->m:Ljava/lang/String;

    goto :goto_0

    .line 846
    :pswitch_8
    iget-boolean v0, p0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 828
    nop

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
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/a;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 955
    instance-of v0, p1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    if-nez v0, :cond_0

    move v0, v1

    .line 986
    :goto_0
    return v0

    .line 960
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 961
    goto :goto_0

    .line 964
    :cond_1
    check-cast p1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;

    .line 965
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

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

    .line 966
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 967
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 969
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 971
    goto :goto_0

    :cond_3
    move v0, v1

    .line 976
    goto :goto_0

    .line 979
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 981
    goto :goto_0

    :cond_5
    move v0, v2

    .line 986
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 942
    const/4 v0, 0x0

    .line 943
    sget-object v1, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->o:Ljava/util/HashMap;

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

    .line 944
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 945
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 946
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 948
    goto :goto_0

    .line 949
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 807
    sget-object v0, Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;->CREATOR:Lcom/google/android/gms/people/identity/internal/models/a;

    invoke-static {p0, p1}, Lcom/google/android/gms/people/identity/internal/models/a;->a(Lcom/google/android/gms/people/identity/internal/models/DefaultMetadataImpl;Landroid/os/Parcel;)V

    .line 808
    return-void
.end method
