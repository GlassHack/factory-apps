.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/plus/service/v1whitelisted/models/h;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/o;

.field private static final k:Ljava/util/HashMap;


# instance fields
.field final a:Ljava/util/Set;

.field final b:I

.field c:Z

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1715
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/o;

    invoke-direct {v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/o;

    .line 1730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1733
    sput-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    const-string v1, "check"

    const-string v2, "check"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->d(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    const-string v1, "option"

    const-string v2, "option"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    const-string v1, "string"

    const-string v2, "string"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->e(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1774
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1775
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->b:I

    .line 1776
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

    .line 1777
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZLjava/lang/String;Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1788
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    .line 1789
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

    .line 1790
    iput p2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->b:I

    .line 1791
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->c:Z

    .line 1792
    iput-object p4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->d:Ljava/lang/String;

    .line 1793
    iput-object p5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

    .line 1794
    iput-object p6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->f:Ljava/lang/String;

    .line 1795
    iput-object p7, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->g:Ljava/lang/String;

    .line 1796
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1744
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 4

    .prologue
    .line 2204
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2205
    packed-switch v0, :pswitch_data_0

    .line 2210
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

    .line 2207
    :pswitch_0
    check-cast p3, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

    .line 2214
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2215
    return-void

    .line 2205
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2183
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2184
    packed-switch v0, :pswitch_data_0

    .line 2195
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

    .line 2186
    :pswitch_1
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->d:Ljava/lang/String;

    .line 2198
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2199
    return-void

    .line 2189
    :pswitch_2
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 2192
    :pswitch_3
    iput-object p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 2184
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 2168
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    .line 2169
    packed-switch v0, :pswitch_data_0

    .line 2174
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

    .line 2171
    :pswitch_0
    iput-boolean p3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->c:Z

    .line 2177
    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2178
    return-void

    .line 2169
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a:Ljava/util/Set;

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
    .line 1711
    return-object p0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2136
    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2148
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

    .line 2138
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2146
    :goto_0
    return-object v0

    .line 2140
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->d:Ljava/lang/String;

    goto :goto_0

    .line 2142
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity$NameEntity;

    goto :goto_0

    .line 2144
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->f:Ljava/lang/String;

    goto :goto_0

    .line 2146
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->g:Ljava/lang/String;

    goto :goto_0

    .line 2136
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 2121
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/o;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2243
    instance-of v0, p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    if-nez v0, :cond_0

    move v0, v1

    .line 2274
    :goto_0
    return v0

    .line 2248
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    .line 2249
    goto :goto_0

    .line 2252
    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;

    .line 2253
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

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

    .line 2254
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2255
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2257
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2259
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2264
    goto :goto_0

    .line 2267
    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2269
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2274
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 2230
    const/4 v0, 0x0

    .line 2231
    sget-object v1, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->k:Ljava/util/HashMap;

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

    .line 2232
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2233
    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g()I

    move-result v3

    add-int/2addr v1, v3

    .line 2234
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 2236
    goto :goto_0

    .line 2237
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 2126
    sget-object v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;->CREATOR:Lcom/google/android/gms/plus/service/v1whitelisted/models/o;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/service/v1whitelisted/models/o;->a(Lcom/google/android/gms/plus/service/v1whitelisted/models/AccountField$ValueEntity;Landroid/os/Parcel;I)V

    .line 2127
    return-void
.end method
