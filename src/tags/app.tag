<app>
    <style>
    </style>
    <home if='{state.exibicaoReducer.home}'></home>
    <dashboard if='{state.exibicaoReducer.dashboard}'></dashboard>
    <anotacoes if='{state.exibicaoReducer.anotacoes}'></anotacoes>
    <script>
        this.mixin('state')
        this.mixin('reduxGlobal')
        this.mixin('subscribeStateTag')
        this.subscribeStateTag(this)
    </script>
</app>