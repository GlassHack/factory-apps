.class public Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static B:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

.field static final a:Lcom/google/android/libraries/phonenumbers/c;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;

.field static final d:Ljava/util/regex/Pattern;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/logging/Logger;

.field private static final h:Ljava/util/Map;

.field private static final i:Ljava/util/Map;

.field private static final j:Ljava/util/Map;

.field private static final k:Ljava/util/Map;

.field private static final l:Ljava/util/Map;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private final C:Ljava/util/Map;

.field private final D:Ljava/util/Set;

.field private final E:Ljava/util/Map;

.field private final F:Ljava/util/Map;

.field private final G:Lcom/google/android/libraries/phonenumbers/k;

.field private final H:Ljava/util/Set;

.field private final I:Ljava/util/Set;

.field private final J:Ljava/lang/String;

.field private final K:Lcom/google/android/libraries/phonenumbers/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x39

    const/16 v7, 0x37

    const/16 v5, 0x36

    const/16 v4, 0x34

    const/16 v6, 0x2d

    .line 60
    new-instance v0, Lcom/google/android/libraries/phonenumbers/g;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/g;-><init>()V

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a:Lcom/google/android/libraries/phonenumbers/c;

    .line 66
    const-class v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->h:Ljava/util/Map;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v0, 0x38

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x35

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->k:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 178
    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->i:Ljava/util/Map;

    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 185
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 190
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const v0, 0xff0d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v0, 0x2010

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v0, 0x2011

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v0, 0x2012

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v0, 0x2013

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v0, 0x2014

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v0, 0x2015

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v0, 0x2212

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const v0, 0xff0f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v0, 0x2060

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const v0, 0xff0e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->l:Ljava/util/Map;

    .line 215
    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->m:Ljava/util/regex/Pattern;

    .line 229
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[, \\[\\]]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[, \\[\\]]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->n:Ljava/lang/String;

    .line 233
    const-string v0, "[+\uff0b]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b:Ljava/util/regex/Pattern;

    .line 234
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->o:Ljava/util/regex/Pattern;

    .line 235
    const-string v0, "(\\p{Nd})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->p:Ljava/util/regex/Pattern;

    .line 244
    const-string v0, "[+\uff0b\\p{Nd}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->q:Ljava/util/regex/Pattern;

    .line 252
    const-string v0, "[\\\\/] *x"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c:Ljava/util/regex/Pattern;

    .line 258
    const-string v0, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d:Ljava/util/regex/Pattern;

    .line 262
    const-string v0, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->r:Ljava/util/regex/Pattern;

    .line 280
    const-string v0, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\p{Nd}"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->s:Ljava/lang/String;

    .line 301
    const-string v1, "x\uff58#\uff03~\uff5e"

    .line 305
    const-string v2, ","

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_2
    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->t:Ljava/lang/String;

    .line 308
    invoke-static {v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e:Ljava/lang/String;

    .line 335
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "(?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->u:Ljava/util/regex/Pattern;

    .line 340
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->t:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(?:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->v:Ljava/util/regex/Pattern;

    .line 343
    const-string v0, "(\\D+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->f:Ljava/util/regex/Pattern;

    .line 349
    const-string v0, "(\\$\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->w:Ljava/util/regex/Pattern;

    .line 350
    const-string v0, "\\$NP"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->x:Ljava/util/regex/Pattern;

    .line 351
    const-string v0, "\\$FG"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->y:Ljava/util/regex/Pattern;

    .line 352
    const-string v0, "\\$CC"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->z:Ljava/util/regex/Pattern;

    .line 357
    const-string v0, "\\(?\\$1\\)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->A:Ljava/util/regex/Pattern;

    .line 359
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->B:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    return-void

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/c;Ljava/util/Map;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->D:Ljava/util/Set;

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->E:Ljava/util/Map;

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->F:Ljava/util/Map;

    .line 563
    new-instance v0, Lcom/google/android/libraries/phonenumbers/k;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/android/libraries/phonenumbers/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    .line 568
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->H:Ljava/util/Set;

    .line 572
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->I:Ljava/util/Set;

    .line 585
    iput-object p1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->J:Ljava/lang/String;

    .line 586
    iput-object p2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->K:Lcom/google/android/libraries/phonenumbers/c;

    .line 587
    iput-object p3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    .line 588
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 592
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "001"

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->I:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->H:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->H:Ljava/util/Set;

    const-string v1, "001"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->D:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 608
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2589
    :goto_0
    return v0

    .line 2526
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2528
    const-string v0, "NonMatch"

    .line 2529
    if-eqz p2, :cond_1

    .line 2530
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v0

    .line 2533
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    .line 2535
    if-eqz p4, :cond_2

    .line 2536
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2538
    :cond_2
    sget-object v3, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v0, v3, :cond_5

    .line 2539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 2540
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2544
    :cond_3
    invoke-direct {p0, v2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 2545
    if-eqz v0, :cond_4

    .line 2546
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2552
    :cond_4
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "Country calling code supplied was not recognised."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2554
    :cond_5
    if-eqz p2, :cond_9

    .line 2558
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    .line 2559
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2560
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2561
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 2565
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2567
    const/4 v6, 0x0

    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2569
    iget-object v6, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 2574
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v2, v3, :cond_9

    .line 2578
    :cond_7
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2579
    if-eqz p4, :cond_8

    .line 2580
    sget-object v1, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {p5, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2582
    :cond_8
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto/16 :goto_0

    .line 2588
    :cond_9
    invoke-virtual {p5, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move v0, v1

    .line 2589
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2471
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 2484
    :goto_0
    return v0

    .line 2476
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2477
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    const/4 v0, 0x3

    if-gt v2, v0, :cond_3

    if-gt v2, v3, :cond_3

    .line 2478
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2479
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2480
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2477
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2484
    goto :goto_0
.end method

.method private a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 5

    .prologue
    .line 3071
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3072
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3073
    new-instance v1, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3074
    invoke-virtual {v1, p2}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3077
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3078
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3079
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3080
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3081
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3082
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3083
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 3085
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3087
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3089
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3092
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3094
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    .line 3122
    :goto_0
    return-object v0

    .line 3096
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 3097
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3099
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 3100
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3101
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3102
    :cond_3
    if-ne v2, v3, :cond_4

    invoke-static {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3107
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3110
    :cond_4
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3114
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 3116
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3117
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3119
    :cond_6
    invoke-static {v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3120
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3122
    :cond_7
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 2

    .prologue
    .line 1984
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 1985
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1987
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2030
    :goto_0
    return-object v0

    .line 1990
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1991
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1993
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1994
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1996
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1997
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 1999
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2000
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2002
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2003
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2005
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2006
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2008
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2009
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2011
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2012
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2015
    :cond_9
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    .line 2016
    if-eqz v0, :cond_c

    .line 2017
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2018
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto :goto_0

    .line 2019
    :cond_a
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2020
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2022
    :cond_b
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2026
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2028
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0

    .line 2030
    :cond_d
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2

    .prologue
    .line 2328
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2329
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2330
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2335
    :goto_0
    return-object v0

    .line 2332
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2333
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2335
    :cond_1
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 2

    .prologue
    .line 1014
    const-class v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->B:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1015
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a:Lcom/google/android/libraries/phonenumbers/c;

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/c;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V

    .line 1017
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->B:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/google/android/libraries/phonenumbers/c;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    .locals 3

    .prologue
    .line 1034
    if-nez p0, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    new-instance v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    const-string v1, "/com/google/android/libraries/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-static {}, Lcom/google/android/libraries/phonenumbers/b;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;-><init>(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/c;Ljava/util/Map;)V

    return-object v0
.end method

.method private a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .prologue
    .line 1248
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/io/ObjectInputStream;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 5

    .prologue
    .line 654
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 656
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 661
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :goto_0
    return-object v0

    .line 662
    :catch_0
    move-exception v1

    .line 663
    :try_start_2
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 657
    :catch_1
    move-exception v1

    .line 658
    :try_start_3
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error reading input (ignored)"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 661
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 662
    :catch_2
    move-exception v1

    .line 663
    :try_start_5
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 665
    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 661
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 662
    :catch_3
    move-exception v1

    .line 663
    :try_start_7
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 665
    :catchall_3
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 2

    .prologue
    .line 2631
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2632
    sget-object v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2645
    :goto_0
    return-object v0

    .line 2635
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2636
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2637
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2639
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;)V

    .line 2640
    sget-object v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    .line 2643
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2644
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;)V

    .line 2645
    invoke-static {v0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method public static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1726
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 1728
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1729
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2156
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2160
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2161
    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2162
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2170
    :goto_0
    return-object v0

    .line 2166
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 2170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 770
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1813
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1814
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1816
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v2, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1821
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 1822
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->z:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1826
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    :goto_0
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v1, :cond_1

    .line 1844
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1845
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1846
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1849
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    :cond_1
    return-object v0

    .line 1831
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 1832
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1835
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1836
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1839
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1760
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1771
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    .line 1774
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1778
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    .line 1779
    if-nez v0, :cond_2

    :goto_1
    return-object p1

    .line 1774
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1779
    :cond_2
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 966
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 967
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 968
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 969
    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 966
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 971
    :cond_1
    if-nez p2, :cond_0

    .line 972
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 976
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7

    .prologue
    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 775
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-char v4, v2, v0

    .line 776
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 777
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 778
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_1
    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 783
    :cond_2
    return-object v1
.end method

.method private static a(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1741
    sget-object v0, Lcom/google/android/libraries/phonenumbers/h;->b:[I

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1754
    :goto_0
    return-void

    .line 1743
    :pswitch_0
    invoke-virtual {p2, v2, p0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1746
    :pswitch_1
    const-string v0, " "

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1749
    :pswitch_2
    const-string v0, "-"

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized a(Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;)V
    .locals 2

    .prologue
    .line 985
    const-class v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->B:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    monitor-exit v0

    return-void

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1121
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1122
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v2, :cond_0

    .line 1127
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, v1, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1147
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1133
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1139
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1142
    invoke-direct {p0, v0, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1144
    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-static {p1, v2, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1146
    invoke-static {v0, p2, p3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v0, :cond_1

    .line 1928
    const-string v0, ";ext="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1931
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1933
    :cond_2
    const-string v0, " ext. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/4 v1, 0x1

    .line 2868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2869
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move v0, v1

    .line 2873
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2877
    :cond_0
    if-eq v0, v1, :cond_1

    .line 2878
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2881
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/c;)V
    .locals 8

    .prologue
    .line 613
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 614
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-interface {p4, v2}, Lcom/google/android/libraries/phonenumbers/c;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 617
    if-nez v0, :cond_3

    .line 618
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "missing metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 619
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "missing metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 614
    goto :goto_0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 621
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 624
    invoke-static {v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/io/ObjectInputStream;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v3

    .line 626
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 627
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "empty metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "empty metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 640
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "cannot load/parse metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cannot load/parse metadata: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 627
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 630
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    .line 631
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "invalid metadata (too many entries): "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 633
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 634
    if-eqz v1, :cond_9

    .line 635
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->F:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :goto_8
    return-void

    .line 631
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 637
    :cond_9
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->E:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 640
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 641
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6

    .prologue
    .line 2787
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2788
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 2892
    if-nez p1, :cond_0

    .line 2893
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The phone number supplied was null."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2895
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 2896
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied was too long to parse."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2900
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2901
    invoke-static {p1, v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2903
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2904
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied did not seem to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2911
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "Missing or invalid default region."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2915
    :cond_3
    if-eqz p3, :cond_4

    .line 2916
    invoke-virtual {p5, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2920
    :cond_4
    invoke-static {v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2921
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2922
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2925
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2929
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2952
    :cond_6
    if-eqz v0, :cond_9

    .line 2953
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 2954
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2956
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2970
    :cond_7
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v7, :cond_b

    .line 2971
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied is too short to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2936
    :catch_0
    move-exception v0

    .line 2937
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2938
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v4, v5, :cond_8

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2941
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v0

    .line 2944
    if-nez v0, :cond_6

    .line 2945
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "Could not interpret numbers after plus-sign."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2949
    :cond_8
    new-instance v1, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 2961
    :cond_9
    invoke-static {v6}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;)V

    .line 2962
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2963
    if-eqz p2, :cond_a

    .line 2964
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    .line 2965
    invoke-virtual {p5, v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2966
    :cond_a
    if-eqz p3, :cond_7

    .line 2967
    invoke-virtual {p5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2974
    :cond_b
    if-eqz v2, :cond_d

    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2977
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2983
    if-eqz p3, :cond_c

    .line 2984
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    :cond_c
    move-object v3, v0

    .line 2988
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2989
    if-ge v0, v7, :cond_e

    .line 2990
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied is too short to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2993
    :cond_e
    const/16 v1, 0x11

    if-le v0, v1, :cond_f

    .line 2994
    new-instance v0, Lcom/google/android/libraries/phonenumbers/NumberParseException;

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied is too long to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/phonenumbers/NumberParseException;-><init>(Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 2997
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2998
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    .line 2999
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 3006
    const-string v0, ";phone-context="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3007
    if-lez v1, :cond_4

    .line 3008
    const-string v0, ";phone-context="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 3011
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 3015
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3016
    if-lez v2, :cond_2

    .line 3017
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_0
    :goto_0
    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3028
    if-ltz v0, :cond_3

    const-string v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 3030
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    :goto_2
    const-string v0, ";isub="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3040
    if-lez v0, :cond_1

    .line 3041
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3047
    :cond_1
    return-void

    .line 3019
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3028
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3034
    :cond_4
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    return-void
.end method

.method private a(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2346
    invoke-static {v0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2068
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2597
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2598
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2599
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2602
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2603
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2604
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2605
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2612
    :cond_0
    :goto_0
    return v0

    .line 2609
    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2610
    goto :goto_0
.end method

.method private b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1224
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1225
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1243
    :goto_0
    return-object v0

    .line 1233
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-direct {p0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1238
    sget-object v4, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v2, v4, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1241
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v1, v0, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2720
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2723
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2725
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_1

    .line 2726
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2729
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2730
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2735
    :goto_1
    return-object v0

    .line 2725
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2735
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2819
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2820
    return-void
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 3

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3129
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3131
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->A:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2075
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4

    .prologue
    .line 2052
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->F:Ljava/util/Map;

    monitor-enter v1

    .line 2053
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    const/4 v0, 0x0

    monitor-exit v1

    .line 2061
    :goto_0
    return-object v0

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->J:Ljava/lang/String;

    const-string v2, "001"

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->K:Lcom/google/android/libraries/phonenumbers/c;

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/c;)V

    .line 2060
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2060
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2744
    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2748
    :cond_0
    const/4 v0, 0x0

    .line 2751
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 2

    .prologue
    .line 1974
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1975
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1976
    if-nez v0, :cond_0

    .line 1977
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 1980
    :goto_0
    return-object v0

    .line 1979
    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1980
    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2108
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 2109
    invoke-direct {p0, v2, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2110
    if-eqz v3, :cond_0

    const-string v4, "001"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->k(Ljava/lang/String;)I

    move-result v4

    if-eq v2, v4, :cond_2

    :cond_0
    move v0, v1

    .line 2127
    :cond_1
    :goto_0
    return v0

    .line 2117
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2118
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 2123
    invoke-virtual {v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 2125
    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    const/16 v3, 0x11

    if-le v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 2127
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private e(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 2139
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2140
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2141
    if-nez v0, :cond_0

    .line 2142
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2143
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Missing/invalid country_code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") for number "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2145
    const/4 v0, 0x0

    .line 2150
    :goto_0
    return-object v0

    .line 2147
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2148
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2150
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 326
    const-string v0, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\\p{Nd}{1,7})"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\p{Nd}"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 4

    .prologue
    .line 2372
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2378
    invoke-direct {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2379
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2399
    :goto_0
    return-object v0

    .line 2381
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 2383
    invoke-direct {p0, v1, v2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(ILjava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2384
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2386
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2387
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2389
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 2390
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2391
    :cond_1
    const/16 v1, 0x11

    if-le v0, v1, :cond_2

    .line 2392
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2394
    :cond_2
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_0

    .line 2397
    :cond_3
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2399
    invoke-static {v1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 686
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 693
    sget-object v2, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v4, "Stripped trailing characters: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    .line 696
    :cond_0
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 697
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_1
    :goto_1
    return-object v0

    .line 693
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method private g(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3231
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 3232
    if-nez v1, :cond_1

    .line 3238
    :cond_0
    :goto_0
    return v0

    .line 3237
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 3238
    invoke-virtual {v1}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    .line 721
    :cond_0
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->v:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->k:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 746
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 794
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->i:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1072
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->H:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 2224
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2225
    if-nez v0, :cond_1

    .line 2226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid region code: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 6

    .prologue
    .line 3188
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3189
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3217
    :cond_0
    :goto_0
    return-object v0

    .line 3190
    :catch_0
    move-exception v0

    .line 3191
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/NumberParseException;->getErrorType()Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/android/libraries/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 3195
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3197
    :try_start_1
    const-string v1, "ZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3198
    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3199
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    .line 3200
    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v0, v1, :cond_0

    .line 3201
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0

    .line 3207
    :cond_1
    new-instance v5, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3208
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3209
    invoke-direct {p0, p1, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_1
    .catch Lcom/google/android/libraries/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3217
    :cond_2
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$MatchType;

    goto :goto_0
.end method

.method final a(Ljava/util/List;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;
    .locals 4

    .prologue
    .line 1786
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;

    .line 1787
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v2

    .line 1788
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1791
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1792
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    .prologue
    .line 2776
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2777
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2778
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->C:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2183
    if-nez v0, :cond_0

    const-string v0, "ZZ"

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1097
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1110
    :goto_0
    return-object v0

    .line 1108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1109
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1291
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    .line 1292
    invoke-direct {p0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1293
    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1365
    :cond_0
    :goto_0
    return-object v0

    .line 1293
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1296
    :cond_2
    const-string v3, ""

    .line 1298
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 1299
    invoke-virtual {p0, v4}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 1300
    invoke-direct {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v7

    .line 1301
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v0, :cond_5

    move v0, v1

    .line 1302
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1303
    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v3, :cond_3

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v7, v3, :cond_3

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v3, :cond_4

    :cond_3
    move v2, v1

    .line 1307
    :cond_4
    const-string v3, "CO"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v7, v3, :cond_6

    .line 1308
    const-string v0, "3"

    invoke-direct {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    :goto_2
    if-nez p3, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1301
    goto :goto_1

    .line 1310
    :cond_6
    const-string v3, "BR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 1311
    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v0, ""

    goto :goto_2

    .line 1317
    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "HU"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1322
    invoke-virtual {p0, v6, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1325
    :cond_9
    if-ne v4, v1, :cond_b

    .line 1329
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1330
    invoke-direct {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1333
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1335
    :cond_a
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1341
    :cond_b
    const-string v0, "001"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "MX"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "CL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    if-eqz v2, :cond_e

    :cond_d
    invoke-direct {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1353
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1355
    :cond_e
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1358
    :cond_f
    if-eqz v0, :cond_11

    invoke-direct {p0, v5}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1362
    if-eqz p3, :cond_10

    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    move-object v0, v3

    goto/16 :goto_2
.end method

.method final a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/StringBuilder;Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2662
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2663
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v3

    .line 2664
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2708
    :cond_0
    :goto_0
    return v0

    .line 2669
    :cond_1
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2670
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2671
    iget-object v4, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->G:Lcom/google/android/libraries/phonenumbers/k;

    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/phonenumbers/k;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2674
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    .line 2678
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    .line 2679
    invoke-virtual {p2}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v7

    .line 2680
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2683
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2687
    :cond_3
    if-eqz p3, :cond_4

    if-lez v6, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2688
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2691
    goto :goto_0

    .line 2695
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2696
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v2, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2697
    if-eqz v5, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2701
    :cond_6
    if-eqz p3, :cond_7

    if-le v6, v1, :cond_7

    .line 2702
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2705
    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    .prologue
    .line 2807
    new-instance v0, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2808
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2809
    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2246
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2247
    if-nez v0, :cond_2

    .line 2248
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid or missing region code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") provided."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    .line 2264
    :cond_1
    :goto_0
    return-object v0

    .line 2254
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v0

    .line 2256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 2257
    goto :goto_0

    .line 2259
    :cond_3
    if-eqz p2, :cond_1

    .line 2262
    const-string v1, "~"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1

    .prologue
    .line 2087
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->e(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2088
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->d(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final c(Ljava/lang/String;)Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    const/4 v0, 0x0

    .line 2048
    :goto_0
    return-object v0

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->E:Ljava/util/Map;

    monitor-enter v1

    .line 2042
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->J:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->K:Lcom/google/android/libraries/phonenumbers/c;

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/libraries/phonenumbers/c;)V

    .line 2047
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    iget-object v0, p0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2047
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2

    .prologue
    .line 2318
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->f(Lcom/google/android/libraries/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 2205
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2206
    sget-object v0, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->g:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid or missing region code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2210
    const/4 v0, 0x0

    .line 2212
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/phonenumbers/PhoneNumberUtil;->k(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
