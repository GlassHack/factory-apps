.class public final Lcom/google/android/location/places/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/b/p;


# instance fields
.field public final a:Lcom/google/android/location/places/b/m;

.field public final b:Lcom/google/c/c/ci;

.field public final c:Lcom/google/c/c/ci;

.field public d:Lcom/google/android/location/places/b/b;

.field private final e:Lcom/google/c/c/ay;

.field private final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/b/m;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/location/places/b/a;->a:Lcom/google/android/location/places/b/m;

    .line 98
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    .line 99
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/a;->e:Lcom/google/c/c/ay;

    .line 100
    invoke-static {}, Lcom/google/c/c/ay;->l()Lcom/google/c/c/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/b/a;->c:Lcom/google/c/c/ci;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/b/a;->f:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->a:Lcom/google/android/location/places/b/m;

    iput-object p0, v0, Lcom/google/android/location/places/b/m;->a:Lcom/google/android/location/places/b/p;

    .line 104
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/location/places/b/l;)V
    .locals 4

    .prologue
    .line 171
    iget-object v2, p2, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    invoke-interface {v0, v2}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    invoke-interface {v0, v2}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/Subscription;

    iget-object v1, p0, Lcom/google/android/location/places/b/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/places/b/c;

    invoke-interface {v1, v0}, Lcom/google/android/location/places/b/c;->a(Lcom/google/android/location/places/Subscription;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->d:Lcom/google/android/location/places/b/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/places/b/a;->c:Lcom/google/c/c/ci;

    invoke-interface {v0, v2}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/places/b/a;->c:Lcom/google/c/c/ci;

    invoke-interface {v0, v2}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "Places"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Places"

    const-string v2, "Unknown eventType"

    invoke-static {v0, v2}, Lcom/google/android/location/o/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/location/places/b/a;->d:Lcom/google/android/location/places/b/b;

    invoke-interface {v2, v0}, Lcom/google/android/location/places/b/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/location/places/b/a;->d:Lcom/google/android/location/places/b/b;

    invoke-interface {v2, v0}, Lcom/google/android/location/places/b/b;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/location/places/b/a;->d:Lcom/google/android/location/places/b/b;

    iget v3, p2, Lcom/google/android/location/places/b/l;->d:I

    invoke-interface {v2, v0}, Lcom/google/android/location/places/b/b;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_2
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/location/places/Subscription;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->e:Lcom/google/c/c/ay;

    invoke-virtual {v0, p1}, Lcom/google/c/c/ay;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/location/places/b/a;->a:Lcom/google/android/location/places/b/m;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/location/places/b/m;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    invoke-interface {v0}, Lcom/google/c/c/ci;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/Subscription;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public final a(Ljava/util/Collection;Lcom/google/android/location/places/b/l;Lcom/google/android/location/places/Subscription;Lcom/google/android/location/places/b/c;)V
    .locals 7

    .prologue
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->e:Lcom/google/c/c/ay;

    invoke-virtual {v0, p3}, Lcom/google/c/c/ay;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 142
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 145
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/places/b/l;

    .line 146
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v5, p0, Lcom/google/android/location/places/b/a;->c:Lcom/google/c/c/ci;

    iget-object v6, v1, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v3, v2}, Lcom/google/c/c/dn;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/c/c/dp;

    move-result-object v0

    .line 154
    invoke-static {v2, v3}, Lcom/google/c/c/dn;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/c/c/dp;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lcom/google/c/c/dp;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/c/c/dp;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/places/b/a;->a:Lcom/google/android/location/places/b/m;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/location/places/b/m;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 162
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 163
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->b:Lcom/google/c/c/ci;

    iget-object v1, p2, Lcom/google/android/location/places/b/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/google/android/location/places/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method
