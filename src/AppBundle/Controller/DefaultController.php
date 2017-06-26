<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $typeId = 10;

        $getTypeByIdService = $this->get('desymfony.type.domain.service.get_type_by_id_service');
        $getPokemonsByTypeIdService = $this->get('desymfony.pokemon.domain.service.get_pokemons_by_type_id_service');
        $getRoutesByTypeIdService = $this->get('desymfony.route.domain.service.get_routes_by_type_id_service');

        $type = $getTypeByIdService->execute($typeId);
        $pokemons = $getPokemonsByTypeIdService->execute($typeId);
        $routes = $getRoutesByTypeIdService->execute($typeId);

        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'type' => $type,
            'pokemons' => $pokemons,
            'routes' => $routes,
        ]);
    }
}
